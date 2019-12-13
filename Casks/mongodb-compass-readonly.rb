cask 'mongodb-compass-readonly' do
  version '1.20.2'
  sha256 '921f44b63c693d937513e8a40ef8e45c7a9c0d483980ce3d4ebd725e71410048'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
