# Etapa 1: usa uma imagem base do Node.js leve
FROM node:20-alpine

# Etapa 2: define o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Etapa 3: copia o package.json e instala as dependências
COPY package.json ./
RUN npm install --only=production

# Etapa 4: copia o código da aplicação
COPY app ./app

# Etapa 5: define a porta usada pela aplicação
EXPOSE 3000

# Etapa 6: comando que roda o servidor quando o container iniciar
CMD ["npm", "start"]
