cask 'devrantron' do
  version '1.3.4'
  sha256 'c58566219f1363123071c63cbd0e8a97b9ff8891d07bba8691b0697dbb0c9227'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: '714a6d6d9c8bff9abf46e728ac158556c7cbe5373b846037a45364d25cc22a6f'
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
