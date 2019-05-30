FROM adoptopenjdk/openjdk11:alpine-slim

ENTRYPOINT ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005", "-jar", "/usr/share/vistair/app.jar"]

EXPOSE 8080
EXPOSE 5005

# Add the service
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/vistair/app.jar
