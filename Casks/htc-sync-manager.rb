cask 'htc-sync-manager' do
  version '3.1.87'
  sha256 'd0c30eb3ec286d0246c6054f42e6cc0f1a4c1b3cd75530cb851fb0e30e045401'

  url "http://dl4.htc.com/download/htc-sync-manager/setup_#{version}_htc.dmg"
  name 'HTC Sync Manager'
  homepage 'http://www.htc.com/us/software/htc-sync-manager/'
  license :gratis

  app 'HTC Sync Manager.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.htc.htc-sync-manager.sfl',
                '~/Library/Application Support/HTC Sync Manager',
                '~/Library/Application Support/HTC_DeviceImage',
                '~/Library/Application Support/HTC_FOTA',
                '~/Library/Caches/com.htc.HTC-Sync-Manager',
                '~/Library/Preferences/com.htc.HTC-Sync-Manager.plist',
              ]
end
