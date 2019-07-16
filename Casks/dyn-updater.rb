cask 'dyn-updater' do
  version '5.4.8'
  sha256 'be4b02a43ca968df9715975930480cea599fc5ecb3e34798f38139ff209dd1ee'

  url "http://cdn.dyn.com/dynupdater/DynUpdater-#{version}.zip"
  appcast 'http://cdn.dyn.com/dynupdater/appcast.xml'
  name 'Dyn Updater'
  homepage 'https://dyn.com/updater/'

  app 'Dyn Updater.app'
end
