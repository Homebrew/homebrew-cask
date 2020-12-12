cask "mongodb-compass-isolated-edition" do
  version "1.24.1"
  sha256 "e503a176aabd9c1a34f5f640d079de5326e57155e947b886b2457e9f5e4280a1"

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Isolated"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Isolated Edition.app"
end
