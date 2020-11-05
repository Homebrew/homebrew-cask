cask "mongodb-compass-isolated-edition" do
  version "1.23.0"
  sha256 "27856bc60339942029bad64834bc9b6bf6d7139f341a9bb10fe80eca20a7aaeb"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Isolated"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Isolated Edition.app"
end
