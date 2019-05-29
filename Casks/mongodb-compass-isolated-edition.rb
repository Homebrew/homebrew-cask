cask 'mongodb-compass-isolated-edition' do
  version '1.15.2'
  sha256 '743cf33e9e09306a58e2f88f8ef2cd9b7dfcfd8ba37eef9938ceacbf35bf433b'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
