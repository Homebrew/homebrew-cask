cask 'qsyncthingtray' do
  version '0.2.1'
  sha256 'fcab80b0ad2e0cebbedf2dcb646073e624a287cb14f5fee39043cd4eb1d2c7a5'

  url "https://github.com/sieren/QSyncthingTray/releases/download/v#{version}/QSyncthingTray.dmg.zip"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom'

  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :oss
  depends_on :formula => 'syncthing'

  container :nested => 'QSyncthingTray.dmg'
  app 'QSyncthingTray.app'

  #FIXME: App should be terminated on uninstall, but has no bundle ID
  #uninstall :quit => 'QSyncthingTray' ← Does not work too

end
