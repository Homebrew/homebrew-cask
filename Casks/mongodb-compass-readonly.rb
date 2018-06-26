cask 'mongodb-compass-readonly' do
  version '1.14.5'
  sha256 '123f1b77849fec7e710dcda03088d7bf6202be889a99307e7365d20fd3212f12'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
