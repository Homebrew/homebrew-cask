cask 'boostnote' do
  version '0.9.0'
  sha256 '75ea857adecf4e4ae636ffae19e7739bc9d46c723826457864b86ea412f2512d'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '4f01d233b6a22401af9b88f97ed60b8deaab6db293f87797caa56667b08b1d93'
  name 'Boostnote'
  homepage 'https://boostnote.io/'

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
