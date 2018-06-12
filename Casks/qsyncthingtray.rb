cask 'qsyncthingtray' do
  version '0.5.8'
  sha256 '1a8bf6975d5f9b1952edf1a070e35338d2c0f6ff9939e3dcda742280baa645b1'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'

  app 'QSyncthingTray.app'

  zap trash: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
