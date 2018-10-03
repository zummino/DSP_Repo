pull_image() {
  # If doesn't exists pull
 if [ -z "$(docker images | grep -w "$1")" ]; then
  echo "Pulling $1..."
  docker pull $1
  fi
}
# Built images
pull_image nsunina/alpine_netcat:v1.1
pull_image nsunina/smtp-user-enum:v1.0
pull_image nsunina/alpine_vrfy:v1.0
pull_image nsunina/postfix:v1.1
