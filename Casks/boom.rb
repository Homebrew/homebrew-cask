cask 'boom' do
  version '1.6.3,1516703562'
  sha256 '514187e00a60a877e99da0cbefbd3d725883f88a633344bc59de676dc803aa56'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: 'c59c36f4c76f34930739a76b642350ee3103bfa8610c624b004712c044fb08d0'
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
