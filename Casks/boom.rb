cask 'boom' do
  version '1.6.2,1506518204'
  sha256 '1f0faa50e0cb13ac80012d3411e486a72632a61000d90fbfd58df76a04cbb396'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: 'b50c86a5204fbb7bf87315dd28ff0562b6cb509f25803e52c645044f0b0aa267'
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
