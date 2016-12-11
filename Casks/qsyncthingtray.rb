cask 'qsyncthingtray' do
  version '0.5.6'
  sha256 '30ffe15479173986c594677504eb6ba76cfdbf710cf7a2e52ad459f31d31d205'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: 'b71f1ff7715d8d10b2695d4202c33eb65da564c190a55e5601bb2f187a7500fb'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'

  app 'QSyncthingTray.app'

  zap delete: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
