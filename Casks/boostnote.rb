cask 'boostnote' do
  version '0.11.8'
  sha256 'acfd54dc84f2a41447e93329220350e269a326d5906058826aea57a7875b8839'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom'
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
