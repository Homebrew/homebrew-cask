cask 'caffeine' do
  version '1.1.1'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url "http://lightheadsw.com/files/releases/com.lightheadsw.Caffeine/Caffeine#{version}.zip"
  appcast 'http://lightheadsw.com/caffeine/',
          checkpoint: '25c5bf01c94a06e34e5ff052705e146d2b5cc8819f2f353a7c9784ac14f9127c'
  name 'Caffeine'
  homepage 'http://lightheadsw.com/caffeine/'

  app 'Caffeine.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lightheadsw.caffeine.sfl',
                '~/Library/Preferences/com.lightheadsw.Caffeine.plist',
              ]
end
