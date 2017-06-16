cask 'boostnote' do
  version '0.8.10'
  sha256 '7d6b58b4894629c6d83d40b0496db227e81a2aed7c24c4f57f5baad8b1ef90ab'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '4b5a1137977c41115cfe7da3bde3b7b39b86b8a9d64b818a6c39c1d1945b1b59'
  name 'Boostnote'
  homepage 'https://boostnote.io/'

  depends_on macos: '>= :mavericks'

  app 'Boostnote.app'

  zap delete: [
                '~/Library/Preferences/com.maisin.boost.plist',
                '~/Library/Preferences/com.maisin.boost.helper.plist',
                '~/Library/Saved Application State/com.maisin.boost.savedState',
              ]
end
