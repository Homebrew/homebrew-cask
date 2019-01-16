cask 'musixmatch' do
  version '0.21.21'
  sha256 '6c72699837737c25a5c32bf424764a0b005ddcbf10777c8556f757a13862f256'

  url "https://download-app.musixmatch.com/download/Musixmatch-#{version}.dmg"
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
