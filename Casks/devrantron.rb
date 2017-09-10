cask 'devrantron' do
  version '1.3.6'
  sha256 'a23f1d2231e1f5e15c740ef3b1e59b66ce0b37172e74207908c3be4b9df1338d'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: 'a868a47445ae4369c428c21bbce0697a0c24d6d386bc78c1bc921ceba8b72eda'
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
