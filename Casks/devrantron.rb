cask 'devrantron' do
  version '1.3.1'
  sha256 '05feb5c7dfb1c0d7d4940c8f60c7318757130fbde99089c30fa3a19372356d8d'

  # github.com/tahnik/devRantron was verified as official when first introduced to the cask
  url "https://github.com/tahnik/devRantron/releases/download/v#{version}/devrantron-#{version}.dmg"
  appcast 'https://github.com/tahnik/devRantron/releases.atom',
          checkpoint: '336ddff797a461259b346a1af719857336873c5b0a515a73d5f9783df510959a'
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
