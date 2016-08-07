cask 'komanda' do
  version :latest
  sha256 :no_check

  url 'http://komanda.io/stable/mac-current.zip'
  name 'Komanda'
  homepage 'http://komanda.io/'
  license :mit

  app 'Komanda.app'
end
