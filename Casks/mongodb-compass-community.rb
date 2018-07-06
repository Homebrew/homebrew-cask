cask 'mongodb-compass-community' do
  version '1.14.6'
  sha256 '6b68e74518dab8c4c018cbd0637266b133db2b042f9e1c9a1c98498ab3c11e7e'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
