cask 'anatine' do
  version '0.2.0'
  sha256 '0d344fb9315979b05904d3a69032d89d59690bf74c1f8283acd4a1223b71828e'

  url "https://github.com/sindresorhus/anatine/releases/download/#{version}/Anatine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/anatine/releases.atom',
          checkpoint: '95c1da5e09b21b75924896f8eafaeb4ed260d41d56fed07dc947c19d32fe3d1f'
  name 'Anatine'
  homepage 'https://github.com/sindresorhus/anatine'
  license :mit

  app 'Anatine.app'

  zap delete: [
                '~/Library/Application Support/Anatine',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sindresorhus.anatine.sfl',
                '~/Library/Preferences/com.sindresorhus.anatine.plist',
                '~/Library/Saved Application State/com.sindresorhus.anatine.savedState',
              ]
end
