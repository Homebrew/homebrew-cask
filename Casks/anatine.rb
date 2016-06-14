cask 'anatine' do
  version '0.5.0'
  sha256 '23d6a34fcfdb11224ab98efac66ae91ecbdfdff8462d59acbfc798b3f3a56892'

  url "https://github.com/sindresorhus/anatine/releases/download/#{version}/Anatine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/anatine/releases.atom',
          checkpoint: 'c8496d78f0b9eae22722dcb5839d5a66ec8f7d117d561b217b737f0ff1b4b151'
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
