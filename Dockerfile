#  use official nodejs image
FROM node:16-alpine
# set the work directory
WORKDIR /app
# copy all the packages
COPY package*.json ./
# install dependencies
RUN npm install --only=production
#copy the rest code
COPY . .
# expost the port on which application will run
EXPOSE 4000
# command to start the application
CMD [ "node","app.js" ]
