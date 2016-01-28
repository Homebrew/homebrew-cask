cask 'qsyncthingtray' do
  version '0.4.2'
  sha256 '88a670d1db2a107a60b04528354540e4360f7ebfdb34f8d3b0ecd3b77dc3a44f'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_OSX.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: 'befa43917a2f7f35be4c907ca424edf7bd2b43848cbaa95223812d5cc84e13a7'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  depends_on cask: 'syncthing'

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
