cask 'boom' do
  version '1.6.4,1519799556'
  sha256 'ef741c3566189a4c53fdeafdc3989e832ea64f6299d4849a14bb6dba22a2afd1'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: '783dac3171e18598d2b26906852fde9f7728f772974040ca4d0010ccce14cced'
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

  zap trash: [
               '~/Library/Application Support/com.globaldelight.Boom2',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2daemon.sfl*',
               '~/Library/Preferences/com.globaldelight.Boom2.plist',
               '~/Library/Preferences/com.globaldelight.Boom2Daemon.plist',
             ]
end
