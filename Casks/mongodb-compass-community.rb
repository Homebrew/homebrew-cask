cask 'mongodb-compass-community' do
  version '1.20.3'
  sha256 '59f70f62902ee9632c58d540ee666c29a4a929979dd700a035bb69f98af87759'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
