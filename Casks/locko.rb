cask 'locko' do
  version '1.2'
  sha256 'b9831813aaed104d7fd746b50b5b9ee47a334826cda045aae86cc04e2f17abc8'

  url 'http://download.binarynights.com/Locko.zip'
  appcast 'http://update.binarynights.com/locko/sparkle-update.xml',
          checkpoint: '109cd2e84b31bafcc00c84f5fbb8a3dc27653c1aaeba983b9f4cd5ef41258afd'
  name 'Locko'
  homepage 'https://www.binarynights.com/'

  app 'Locko.app'
end
