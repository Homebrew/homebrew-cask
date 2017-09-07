cask 'boom' do
  version '1.6.1,1500546110'
  sha256 '33993c1c921014b33e3c3e5a7c1e7e530b68393e17eb6090d1a7d45192a63fac'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: 'a48ebf2304d51f57504d44f0550ccfc64dd35dca87199241648f575cd24ff286'
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
