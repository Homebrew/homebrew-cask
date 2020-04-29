cask 'mongodb-compass-readonly' do
  version '1.21.0'
  sha256 '80ef5e017c6100e9013930643a587e2e149e082637f80ddf30ac617f11bd9611'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
