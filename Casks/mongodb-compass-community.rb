cask 'mongodb-compass-community' do
  version '1.20.2'
  sha256 '7bd8210f0490256b91f1220a0981cef1cb2dc26a820f8407ea29fd73722a1154'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
