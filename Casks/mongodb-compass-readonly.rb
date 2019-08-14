cask 'mongodb-compass-readonly' do
  version '1.19.3'
  sha256 '236e7d03c4b2b7d25ff8c412d9f324d506eead24d68a404c4d8f270366fe16de'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
