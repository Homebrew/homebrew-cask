cask 'mongodb-compass-readonly' do
  version '1.12.8'
  sha256 '2fb1eb2182cdc6ecf38d2e274d616e7347f618fe5db0e0ee54737a712a09b7f1'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
