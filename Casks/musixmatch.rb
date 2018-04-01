cask 'musixmatch' do
  version :latest
  sha256 :no_check

  url 'https://download-app.musixmatch.com/download/osx'
  name 'Musixmatch'
  homepage 'https://www.musixmatch.com/'

  app 'Musixmatch.app'
end
