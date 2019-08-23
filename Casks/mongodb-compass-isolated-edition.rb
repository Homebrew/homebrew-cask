cask 'mongodb-compass-isolated-edition' do
  version '1.19.6'
  sha256 '24fe0d67e5eb2014fe695f08259c5a19b582bcc9935bc03e0c60a7b4cbb03f07'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
