cask "mongodb-compass-readonly" do
  version "1.22.1"
  sha256 "aa8fce33daf9d3275db4aaaa0dbe3b5f361fd22f00c6ba8566282dadafc94456"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Readonly"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Readonly.app"
end
