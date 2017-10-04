cask 'boostnote' do
  version '0.8.15'
  sha256 'b7007164c1d86ffac8010d818a8a36e737bae6756a2f6ab610493772c48a91b1'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '97a21251b4d3a2d671bdc260548ebc1a556f9a51710ba141c7d28d247fc762f9'
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
