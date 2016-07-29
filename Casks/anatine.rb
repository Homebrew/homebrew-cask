cask 'anatine' do
  version '0.5.1'
  sha256 '62084bbd6c843e7b17b09f61fe95925353a326449adff85dc26c0e7b7f7b977e'

  url "https://github.com/sindresorhus/anatine/releases/download/#{version}/Anatine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/anatine/releases.atom',
          checkpoint: '4e3606d25983917ff2a917096a6ffb636bed293df922f1fdca241697f112e2a9'
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
