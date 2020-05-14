cask 'mongodb-compass-community' do
  version '1.21.2'
  sha256 'af2840d0a71a15d01160b547766cd291acc2f15955f1dee1ac79cc9db60153ba'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
