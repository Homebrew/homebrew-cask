cask 'mongodb-compass-readonly' do
  version '1.20.3'
  sha256 '48be259119252462b181686712481cddb93fcdbfa3c5396c35ade10de6d1d1ef'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
