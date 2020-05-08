cask 'mongodb-compass-community' do
  version '1.21.1'
  sha256 '9b535f0d9463c6a7b5de7221c66db59db82b81d0468b050b5bcadc43552f4bce'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
