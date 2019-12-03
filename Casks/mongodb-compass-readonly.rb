cask 'mongodb-compass-readonly' do
  version '1.19.13'
  sha256 'c65e1da52b0acfa426573f23b224a60d88d02d58036075824cdf258154af1cd6'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
