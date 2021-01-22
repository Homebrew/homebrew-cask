cask "mongodb-compass-isolated-edition" do
  version "1.25.0"
  sha256 "4c51d904cb1e1be48911b3682caaa10bca6eba5603d890cce96ed3c9de67fd0a"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Isolated"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Isolated Edition.app"
end
