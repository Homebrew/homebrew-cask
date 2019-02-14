cask 'musixmatch' do
  version '0.21.27'
  sha256 'cb4f789b2e50ca89ffa1b135ec579c249ade4b513c9256958194cfe4661b9325'

  url "https://download-app.musixmatch.com/download/Musixmatch-#{version}.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_filename.cgi?url=http://download-app.musixmatch.com/download/osx'
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
