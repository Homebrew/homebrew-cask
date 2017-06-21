cask 'qsyncthingtray' do
  version '0.5.7'
  sha256 '9b6063a8a2de05561c8348b9b77051f5bc9630297e9032804a2b69d844190fae'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_#{version}_MAC.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom',
          checkpoint: 'f724adcf29c547e97a9987b1f9e381ff2662a14033c0efb81e85bf50ed2624d9'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'

  app 'QSyncthingTray.app'

  zap trash: '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
