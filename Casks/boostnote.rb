cask 'boostnote' do
  version '0.8.14'
  sha256 'f5cb7a5fb1237c591e0b687239744261e42d0a90bd644230deca036e5b346c86'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '6573fa3c0e9a360c7d5dcc088d8092b0586f7e41bbe32cf25a642e730ff5e374'
  name 'Boostnote'
  homepage 'https://boostnote.io/'

  depends_on macos: '>= :mavericks'

  app 'Boostnote.app'

  uninstall signal: [
                      ['TERM', 'com.maisin.boost.helper'],
                      ['TERM', 'com.maisin.boost'],
                    ]

  zap delete: '~/Library/Saved Application State/com.maisin.boost.savedState',
      trash:  [
                '~/Library/Application Support/boost',
                '~/Library/Preferences/com.maisin.boost.plist',
                '~/Library/Preferences/com.maisin.boost.helper.plist',
              ]
end
