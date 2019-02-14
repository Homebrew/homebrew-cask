cask 'musixmatch' do
  version '0.21.26'
  sha256 '8fb83ecede01131fad03c2575cd96f711a33a30531463dcc22a92d77e97d85b5'

  url "https://download-app.musixmatch.com/download/Musixmatch-#{version}.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=http://download-app.musixmatch.com/download/osx'
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
