cask 'boostnote' do
  version '0.11.16'
  sha256 '5169360f6decb3a5dda14f345c20a0c8346cb97150cd5125538b49c2abe39ce7'

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
