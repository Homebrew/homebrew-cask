cask 'boom' do
  version '1.6,1490693621'
  sha256 '24b32b7c13988bd5c71d6ff3a91bef2a686e2cff101d2cee739af5737f9644f0'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: '4f468fa05290cc89e015a6e3310c47f42d56df4ca8cd916045288354568b18bd'
  name 'Boom'
  homepage 'http://www.globaldelight.com/boom'

  depends_on macos: '>= :yosemite'

  app 'Boom 2.app'

  uninstall kext:      'com.globaldelight.driver.Boom2Device',
            launchctl: [
                         'com.globaldelight.Boom2.*',
                         'com.globaldelight.Boom2Daemon',
                       ],
            signal:    ['TERM', 'com.globaldelight.Boom2']

  zap delete: [
                '~/Library/Application Support/com.globaldelight.Boom2',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2daemon.sfl',
                '~/Library/Preferences/com.globaldelight.Boom2.plist',
                '~/Library/Preferences/com.globaldelight.Boom2Daemon.plist',
              ]
end
