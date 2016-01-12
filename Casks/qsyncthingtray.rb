cask 'qsyncthingtray' do
  version '0.3.0'
  sha256 'a63be2b48c6dc1d4c9cf72f9f720fb57bd49f6a6ef507ab6ad56c125876ff80b'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version.major_minor}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          :sha256 => '49da86b17a9b61f3d8df487a6fd43a49ac5a82c7bc59cc91da1f54275e5523dc'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  depends_on :formula => 'syncthing'

  app 'QSyncthingTray.app'

  zap :delete => '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
