cask 'qsyncthingtray' do
  version '0.4.3'
  sha256 '4ae49d69a809b4ea2fa9665518144415b41e4aaf598d92a1e1ffd588ea461f48'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: 'e4db8c7be32730339cabfcf052cdbfc43cf0c7b41b118fccb937db6f642f6cf9'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  depends_on cask: 'syncthing'

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
