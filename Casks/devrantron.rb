cask 'devrantron' do
  version '1.5.0'
  sha256 'ac19c608e99df1bf8b53af822ac49278bbb173db4657c00e2d600b5556b59662'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: 'fad8168238e50c1c681c9165461497a4fe5bb6f752db55bb79acba64ff67a277'
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
