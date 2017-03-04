cask 'qsyncthingtray' do
  version '0.5.7'
  sha256 '9b6063a8a2de05561c8348b9b77051f5bc9630297e9032804a2b69d844190fae'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: '1aacc2c0b199d6fb9fc6374bda7ed50b1bfee895554c0fab66afd5e6332b5483'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
