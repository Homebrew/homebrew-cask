cask 'mongodb-compass-community' do
  version '1.14.5'
  sha256 '97a12f180f7d2bb8e5cd5cb9fc49f1784fb208e55966d3c171bcad3bad8b6833'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
