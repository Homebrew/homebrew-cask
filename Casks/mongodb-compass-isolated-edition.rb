cask 'mongodb-compass-isolated-edition' do
  version '1.19.0'
  sha256 'c8e8c654e257b14236d3515b93be5e1c48a4f2e036b219d9ed0a1ebfb3de600e'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
