cask 'mongodb-compass-community' do
  version '1.12.8'
  sha256 'ec4613a7b40366020dbe36c1d585ea0bf5df80318f98509e9884c4ee0933f5ea'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
