cask 'devrantron' do
  version '1.4.5'
  sha256 'e717559d9988df7a967c7d1f85a1f2f8432b2b2e888bd50f17f090b95c0a3815'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: '742c19d694fcf688bd9a5eba1027e876055458dbf07c18f78e9e3fa92e5f7031'
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
