cask 'boostnote' do
  version '0.11.15'
  sha256 '506ce1d9e778788b73dede3a78ecb5c9a6f09e306d0473197301caf7a11decc0'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.zip"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom'
  name 'Boostnote'
  homepage 'https://boostnote.io/'

  auto_updates true

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
