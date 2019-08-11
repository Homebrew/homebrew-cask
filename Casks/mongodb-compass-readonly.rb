cask 'mongodb-compass-readonly' do
  version '1.19.0'
  sha256 'df6dfb949b3591669fd7bd858ac1fc6cfb6a1f9e29ae47e90ca0a0f4b66776e5'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
