cask 'mongodb-compass-community' do
  version '1.18.0'
  sha256 '8034662fcaebd7c173c7582e10aa05f1f11090b6e7f1c97fd91eaedef487b3ba'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
