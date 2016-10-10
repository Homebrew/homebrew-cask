cask 'anatine' do
  version '1.0.0'
  sha256 '7c949001811de062ce40aa32e9e64108ebd6312b31ebaed8abe6ee66449b3bdc'

  url "https://github.com/sindresorhus/anatine/releases/download/#{version}/Anatine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/anatine/releases.atom',
          checkpoint: '88140838bfb4d214c7dcc851f280b2527a1639628f30dd9b2bf1e180f0e88c4b'
  name 'Anatine'
  homepage 'https://github.com/sindresorhus/anatine'

  app 'Anatine.app'

  zap delete: [
                '~/Library/Application Support/Anatine',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sindresorhus.anatine.sfl',
                '~/Library/Preferences/com.sindresorhus.anatine.plist',
                '~/Library/Saved Application State/com.sindresorhus.anatine.savedState',
              ]
end
