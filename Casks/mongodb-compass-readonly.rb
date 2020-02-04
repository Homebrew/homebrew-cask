cask 'mongodb-compass-readonly' do
  version '1.20.5'
  sha256 'dd5f99522b7528c535f0d03b66b64743cd135051112e9ad65ed629e096c19257'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
