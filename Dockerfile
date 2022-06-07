FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=productionCOPY package*.json ./

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]

