cask 'qsyncthingtray' do
  version '0.4.3'
  sha256 '4ae49d69a809b4ea2fa9665518144415b41e4aaf598d92a1e1ffd588ea461f48'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: '805caeb73ae7ae3e5d739a190fcb9aa1a3fc41d4fcd344dc65e27bbf6a708ddd'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  depends_on cask: 'syncthing'

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
