cask 'soqlxplorer' do
  version '2.31'
  sha256 'b6bd704e72da533506beb19a52bef41b58ca251303ba2fa7f3227f8767bc7610'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          :checkpoint => '0c946b4cfe055844c2dbd40e9e2b9421e616a47e9c595e8162ca46a70205d9ef'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'
  license :mit

  app 'SoqlXplorer.app'
end
