cask 'htc-sync-manager' do
  version '3.1.94'
  sha256 '416c0b656c13f9b878493eaabef2d02ea8c0888eeaf6efa5af092a714126990c'

  url "https://dl4.htc.com/download/htc-sync-manager/setup_#{version}_htc.dmg"
  name 'HTC Sync Manager'
  homepage 'https://www.htc.com/us/software/htc-sync-manager/'

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
