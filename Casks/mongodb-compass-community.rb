cask 'mongodb-compass-community' do
  version '1.13.1'
  sha256 'a6108af919846c280b8bfd6eaa1067b5717c1c4700a9727b8dae6de5e3c455a7'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
