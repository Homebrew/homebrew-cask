cask :v1 => 'soqlxplorer' do
  version '2.31'
  sha256 'b6bd704e72da533506beb19a52bef41b58ca251303ba2fa7f3227f8767bc7610'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          :sha256 => '16f0bf9d75169890328740496590cf71dc2c39e971139ec1a7ef052e641e092e'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'
  license :mit

  app 'SoqlXplorer.app'
end
