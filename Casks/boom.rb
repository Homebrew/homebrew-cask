cask 'boom' do
  version '1.5,1473947204'
  sha256 'd760ddac723dcce6c69f6195117f290a2561a61abf91f2915d107329eb6926d2'

  # devmate.com/com.globaldelight.Boom2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Boom2/#{version.before_comma}/#{version.after_comma}/Boom2-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Boom2.xml',
          checkpoint: '2175da148d3fb86eb83cdcb99a7d288c78cd02b3507e1b6fc0311ef817f16be7'
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
