cask 'mongodb-compass-isolated-edition' do
  version '1.19.1'
  sha256 'db74d305c79b1bbfe237cd969ac1d4037eb576345cb2c09405e8618e81389aa5'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
