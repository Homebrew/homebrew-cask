cask 'mongodb-compass-community' do
  version '1.19.3'
  sha256 '917ccda640f0be826cc3fff017b1b92fc42880811ceef7406de7e6768d5f25e4'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
