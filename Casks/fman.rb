cask 'fman' do
  version :latest
  sha256 :no_check

  url 'http://download.fman.io/fman.dmg'
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
