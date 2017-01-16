cask 'dyn-updater' do
  version :latest
  sha256 :no_check

  url 'http://cdn.dyn.com/dynupdater/DynUpdater.dmg'
  name 'Dyn Updater'
  homepage 'https://dyn.com/apps/updater/'

  app 'Dyn Updater.app'
end
