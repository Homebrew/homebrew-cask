cask 'musixmatch' do
  version '0.21.13'
  sha256 'b5c65f63a9c2a7cc52938ec202c489b116255995c5625382f4b5ed45ef20e77f'

  url "https://download-app.musixmatch.com/download/Musixmatch-#{version}.dmg"
  appcast 'http://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=http://download-app.musixmatch.com/download/osx'
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
