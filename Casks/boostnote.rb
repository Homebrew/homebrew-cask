cask 'boostnote' do
  version '0.8.16'
  sha256 '1b6d76101b8abcfdee5dff8babd6c5c478991cc4eecd50f9af00129ebf286309'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: 'd3b9b4c1aa721ab754eacac0716aca15d420b670cc3bef3e086cfc92587d88fd'
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
