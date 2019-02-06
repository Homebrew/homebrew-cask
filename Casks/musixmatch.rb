cask 'musixmatch' do
  version '0.21.24'
  sha256 'd91e3bbfd82beca8a1960efbb88ef6d5601b2a0381cd64a4d274f097da9ba8b9'

  url "https://download-app.musixmatch.com/download/Musixmatch-#{version}.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=http://download-app.musixmatch.com/download/osx'
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
