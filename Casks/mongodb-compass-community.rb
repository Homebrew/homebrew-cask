cask 'mongodb-compass-community' do
  version '1.12.7'
  sha256 'a7b3e023a885f0456791d97d8df4697064ea297fe54479afe3d065cd8a82098b'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
