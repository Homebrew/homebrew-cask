cask 'boostnote' do
  version '0.10.0'
  sha256 '78d421c971322b7faefd03dfb2fb208cca54bbecf9019548c3f8165247f61684'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '16bc71948a474eb969be43a69d2e1038e015ac4809c076145e9ee95549925f27'
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
