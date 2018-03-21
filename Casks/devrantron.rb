cask 'devrantron' do
  version '1.5.2'
  sha256 '5fb8b5076fcc41de40df126f75d685f16d42d2e14b41eb57e4acad25f198a3e7'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: 'b4c2e4a0616d5f116eebb0b93e1fbd637ca95e9a26fea5fe5c0bae1902a9540e'
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
