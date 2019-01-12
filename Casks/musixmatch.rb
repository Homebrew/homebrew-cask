cask 'musixmatch' do
  version '0.21.19'
  sha256 'ebccdc3308908c8ffeb3e8e59fe26f9b48d3c305a54b6f08b73ca1d316378006'

  url "https://download-app.musixmatch.com/download/Musixmatch-#{version}.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=http://download-app.musixmatch.com/download/osx'
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
