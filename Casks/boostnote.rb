cask 'boostnote' do
  version '0.11.12-pre.1'
  sha256 'fc597b00e9d16b80659026717102048c002336a2863351f61acde5075b2d7633'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.zip"
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
