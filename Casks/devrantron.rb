cask 'devrantron' do
  version '1.4.6'
  sha256 '254e6041deea34dda8a01b29c37656528b9e32d358016a445cffc66ad49a9d6c'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: 'b5bcd71a92dbffcef2b22e99c22775beee9de82a17c94bb4426852cd62027973'
  name 'devRantron'
  homepage 'https://devrantron.firebaseapp.com/'

  app 'devRantron.app'

  uninstall login_item: 'devRantron',
            signal:     [
                          ['TERM', 'de.zerotask.theclassic'],
                          ['TERM', 'de.zerotask.theclassic.helper'],
                        ]

  zap trash: [
               '~/Library/Application Support/devrantron',
               '~/Library/Preferences/de.zerotask.theclassic.helper.plist',
               '~/Library/Preferences/de.zerotask.theclassic.plist',
               '~/Library/Saved Application State/de.zerotask.theclassic.savedState',
             ]
end
