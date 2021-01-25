cask "mongodb-compass-readonly" do
  version "1.25.0"
  sha256 "2c05dad2e340936c5e60838d01212949d3485ae2164efa09cfb6f2a49e7ba531"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Readonly"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Readonly.app"
end
