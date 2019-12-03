cask 'mongodb-compass-community' do
  version '1.19.13'
  sha256 '4046b02fa08999391a154c1c8de2dffb73e0874348ab2fb7743f9d50319ed682'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
