FROM python:3.7-alpine
MAINTAINER London App Developer ltd

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
# copy the current file requirement.txt to the docker-image "requirement.txt"
RUN pip install -r /requirements.txt
 # it will install all the requirement,txt into docker image

 RUN mkdir /app
 # it will create an emptydirectory in docker image where all source code is present .
 WORKDIR /app
# it will switches to default directory.
#Any application in docker wwill starting running from these location
 COPY ./app /app
 #it will copy the app directory into docker image

 RUN adduser -D user
 USER user



 # docker-compose is a tool that is used to run docker image easily from the docker location.
 # it allows to manage different services
 #Eg - one services manage python and other manage database .



