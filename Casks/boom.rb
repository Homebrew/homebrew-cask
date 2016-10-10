cask 'boom' do
  version '1.5,1474610397'
  sha256 '848b4fbe4d20e2f6e2267c75a17a3ceeb481dee79fa08a3021b204e0e62de813'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: '8eb9a0a978cd243fb8f0decee2a11eb943c07bf3ccd4d231717e2f15060a02d5'
  name 'Boom'
  homepage 'http://www.globaldelight.com/boom/'

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
