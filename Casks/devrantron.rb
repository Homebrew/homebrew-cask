cask 'devrantron' do
  version '1.2.2'
  sha256 'e3e9d547aa241241e10aeac09b3a52bdecbf71e17bcd62b99c4ca3760723300f'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: '34c31502b21c9bd226c9c768888521926fadae673e11099d49d42c28cc246c42'
  name 'devRantron'
  homepage 'https://devrantron.firebaseapp.com/'

  app 'devRantron.app'

  uninstall login_item: 'devRantron',
            signal:     [
                          ['TERM', 'de.zerotask.theclassic'],
                          ['TERM', 'de.zerotask.theclassic.helper'],
                        ]

  zap delete: '~/Library/Saved Application State/de.zerotask.theclassic.savedState',
      trash:  [
                '~/Library/Application Support/devrantron',
                '~/Library/Preferences/de.zerotask.theclassic.helper.plist',
                '~/Library/Preferences/de.zerotask.theclassic.plist',
              ]
end
