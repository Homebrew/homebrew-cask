cask 'anatine' do
  version '1.1.0'
  sha256 '172e45ffe4f8ae4169db416eb9585680bf5a33869001772587304eba497861db'

  url "https://github.com/sindresorhus/anatine/releases/download/#{version}/Anatine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/anatine/releases.atom',
          checkpoint: '534c6dc58624b1e01a9c262778f3f06502cc0ec49c76fb87154b3cfc277b7582'
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
