cask "jpadilla-rabbitmq" do
  version "3.6.1-build.1"
  sha256 "1838afcece704ab1d23645d5d44953b809474f1f67ec4b18f3f98d440e5b5aad"

  url "https://github.com/jpadilla/rabbitmqapp/releases/download/#{version}/RabbitMQ.zip",
      verified: "github.com/jpadilla/rabbitmqapp/"
  name "RabbitMQ"
  desc "App wrapper for RabbitMQ"
  homepage "https://jpadilla.github.io/rabbitmqapp/"

  app "RabbitMQ.app"

  zap trash: [
    "~/Library/Caches/io.blimp.RabbitMQ",
    "~/Library/Preferences/io.blimp.RabbitMQ.plist",
  ]
end
