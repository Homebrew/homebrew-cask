cask 'mongodb-compass-community' do
  version '1.20.1'
  sha256 '4cb8c005db36e916c60f8fca7a7724ad9633201d537aae0f9f86829eba5096f0'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
