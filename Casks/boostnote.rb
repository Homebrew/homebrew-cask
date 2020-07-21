cask 'boostnote' do
  version '0.16.0'
  sha256 'ca7107f615d39b59e52f80794006d65e759c6b0b5b1eb201e2ad675c558f4971'

  # github.com/BoostIO/boost-releases/ was verified as official when first introduced to the cask
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
