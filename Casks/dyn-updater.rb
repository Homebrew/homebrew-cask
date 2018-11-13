cask 'dyn-updater' do
  version '5.4.7'
  sha256 '84a13897a60bb4dc55bd0508dafb9e234b1926d2874890cbd0b67c1cffab17d7'

  url 'http://cdn.dyn.com/dynupdater/DynUpdater.dmg'
  appcast 'http://cdn.dyn.com/dynupdater/appcast.xml'
  name 'Dyn Updater'
  homepage 'https://dyn.com/updater/'

  app 'Dyn Updater.app'
end
