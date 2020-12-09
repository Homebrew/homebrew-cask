cask "mongodb-compass-readonly" do
  version "1.24.1"
  sha256 "6d5e698d64b8af63b64e016882d9a01b828e3019c57b1e9fbf3f9d763b2820b1"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Readonly"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Readonly.app"
end
