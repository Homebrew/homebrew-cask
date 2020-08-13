cask "rabbitmq" do
  version "3.6.1-build.1"
  sha256 "1838afcece704ab1d23645d5d44953b809474f1f67ec4b18f3f98d440e5b5aad"

  # github.com/jpadilla/rabbitmqapp/ was verified as official when first introduced to the cask
  url "https://github.com/jpadilla/rabbitmqapp/releases/download/#{version}/RabbitMQ.zip"
  appcast "https://github.com/jpadilla/rabbitmqapp/releases.atom"
  name "RabbitMQ"
  homepage "https://jpadilla.github.io/rabbitmqapp/"

  app "RabbitMQ.app"

  zap trash: [
    "~/Library/Caches/io.blimp.RabbitMQ",
    "~/Library/Preferences/io.blimp.RabbitMQ.plist",
  ]
end
