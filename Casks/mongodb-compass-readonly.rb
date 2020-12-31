cask "mongodb-compass-readonly" do
  version "1.24.6"
  sha256 "92ef0d6d4fe630334dd284e26d8da916117cd936b7cdd205c0e1925af2cef2e6"

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast "https://www.mongodb.com/try/download/compass"
  name "MongoDB Compass Readonly"
  homepage "https://www.mongodb.com/products/compass"

  app "MongoDB Compass Readonly.app"
end
