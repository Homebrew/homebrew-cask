cask 'qsyncthingtray' do
  version '0.5.2'
  sha256 '5419b2e4040f2fa347e9b173a54462a4885f9f145c72baefd988065cdd91fa7e'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: '05524e57a102be842841cb8f07504d742595fb63631bbef89e3dbe8c5fdfb251'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
