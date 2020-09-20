cask "mongodb-compass-isolated-edition" do
  version "1.22.1"
  sha256 "5a075561d67304aa9aceb692fd77a5e6d0fc973bb4a9d96def0770dad70284c3"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Isolated"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Isolated Edition.app"
end
