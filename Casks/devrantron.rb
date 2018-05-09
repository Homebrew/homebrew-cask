cask 'devrantron' do
  version '1.5.3'
  sha256 '2528807393fb3acc6fd3410512dd8194e61056f98d175976a26275be0374315f'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: 'c4b9d53d6136e555d7a373cd45d49bb69510ed6ec65800e7e31d2e0847c0ea2a'
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
