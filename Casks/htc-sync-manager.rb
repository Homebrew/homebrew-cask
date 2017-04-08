cask 'htc-sync-manager' do
  version '3.1.118'
  sha256 '7b960268c564a613fece78233364d065e60ab72215c3c36f7f83088a564b6660'

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
