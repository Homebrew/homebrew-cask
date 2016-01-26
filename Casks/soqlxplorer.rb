cask 'soqlxplorer' do
  version '2.31'
  sha256 'b6bd704e72da533506beb19a52bef41b58ca251303ba2fa7f3227f8767bc7610'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          checkpoint: '1536bc47a92d80bebefc4a4f3d04bc9963807339f8e7c433f40beacc4ece33ea'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'
  license :mit

  app 'SoqlXplorer.app'
end
