cask 'mongodb-compass-community' do
  version '1.20.5'
  sha256 '38ed4d47bc6998f05cf3f5326e970102b70a783d168d7d385288789d4645083b'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
