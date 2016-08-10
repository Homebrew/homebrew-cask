cask 'boom' do
  version '1.4.3,1469022046'
  sha256 'ecefe52dda2ff20df283260b676532ed2431bfdace550db4ecd08cb9bccddfd1'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: '46243f73857722dd91616328b8ab0812704495f6f8305af29187b6f78f6d68cc'
  name 'Boom'
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Boom 2.app'

  uninstall quit:      'com.globaldelight.Boom2',
            launchctl: [
                         'com.globaldelight.Boom2.*',
                         'com.globaldelight.Boom2Daemon',
                       ]

  zap delete: [
                '~/Library/Application Support/com.globaldelight.Boom2',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2daemon.sfl',
                '~/Library/Preferences/com.globaldelight.Boom2.plist',
              ]
end
