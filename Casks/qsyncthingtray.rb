cask 'qsyncthingtray' do
  version '0.3.0'
  sha256 'a63be2b48c6dc1d4c9cf72f9f720fb57bd49f6a6ef507ab6ad56c125876ff80b'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version.major_minor}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          :sha256 => '2ca0ae9d1c907c6e86e05f7154e137236febd8c4d96cc1a6989000509ed147f0'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  depends_on :formula => 'syncthing'

  app 'QSyncthingTray.app'

  zap :delete => '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
