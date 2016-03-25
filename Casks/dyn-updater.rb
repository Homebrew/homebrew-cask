cask 'dyn-updater' do
  if MacOS.release <= 10.6
    version '3.0'
    sha256 '737eeb00dd0fdb9eeae8401753593e055b1d64f2e287c6bdd98b68d433f0fe8b'
    url 'http://cdn.dyn.com/dyndns-setup-mac.dmg'
  else
    version :latest
    sha256 :no_check
    url 'http://cdn.dyn.com/dynupdater/DynUpdater.dmg'
  end

  name 'Dyn Updater'
  homepage 'https://dyn.com/apps/updater/'
  license :gratis

  app 'Dyn Updater.app'
end
