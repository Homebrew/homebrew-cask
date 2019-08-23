cask 'mongodb-compass-readonly' do
  version '1.19.6'
  sha256 '9d06682f34ada9bac448f9791b5110c12a8263e683e108066d00531223eeacfd'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
