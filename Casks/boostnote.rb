cask 'boostnote' do
  version '0.11.4'
  sha256 '7be274ae983feb4a457886f23510ad6a1bf5fc25ed9c5505afd222f7dffd15b0'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '7e6e46de9cbd7d65dc9462facc83fd5c014792428fcdbcfbd9a02960231ded62'
  name 'Boostnote'
  homepage 'https://boostnote.io/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Boostnote.app'

  uninstall signal: [
                      ['TERM', 'com.maisin.boost.helper'],
                      ['TERM', 'com.maisin.boost'],
                    ]

  zap trash: [
               '~/Library/Application Support/boost',
               '~/Library/Preferences/com.maisin.boost.plist',
               '~/Library/Preferences/com.maisin.boost.helper.plist',
               '~/Library/Saved Application State/com.maisin.boost.savedState',
             ]
end
