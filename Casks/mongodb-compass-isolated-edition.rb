cask "mongodb-compass-isolated-edition" do
  version "1.24.6"
  sha256 "1bee4607ce7103295d4b6a2697436c9223bc2c59cfc246e3e1451e47521f0fc7"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Isolated"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Isolated Edition.app"
end
