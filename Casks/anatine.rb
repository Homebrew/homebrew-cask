cask 'anatine' do
  version '0.1.0'
  sha256 'e546008a221127f4fccbc59bda6b2559692a728aa22a48bb431bb80c76492d44'

  url "https://github.com/sindresorhus/anatine/releases/download/#{version}/Anatine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/anatine/releases.atom',
          checkpoint: '1ca784b9cdc7e058ffc2f1d82a5040f1c8969e7a3f862ea1cd4dedf56b830c20'
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
