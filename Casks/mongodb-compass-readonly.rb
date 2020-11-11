cask "mongodb-compass-readonly" do
  version "1.23.0"
  sha256 "06ac55c6ce539f57854880eb7f4ad257d5d673365a487d4256f116e78a2d5fb0"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Readonly"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Readonly.app"
end
