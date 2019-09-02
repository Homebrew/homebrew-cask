cask 'mongodb-compass-community' do
  version '1.19.6'
  sha256 'f8a5b9fb67edeaa1d62ba9c789255da54ca7546eaccbb8dcc15050195049e7a3'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
