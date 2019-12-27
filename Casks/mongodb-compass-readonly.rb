cask 'mongodb-compass-readonly' do
  version '1.20.4'
  sha256 'a22345ffa5d3eebd9ebb73b4701fff3e40edcac3ceeeead2b2212e3c7cea642a'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
