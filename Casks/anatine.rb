cask 'anatine' do
  version '0.4.2'
  sha256 '70b5a26d308348571698a47fee8122c7f7d27dc7517733e3faedb4cc28deded6'

  url "https://github.com/sindresorhus/anatine/releases/download/#{version}/Anatine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/anatine/releases.atom',
          checkpoint: '1b9e434c4bc86d62f68358681493094888743b5194c1b5c9d5317afaa570813d'
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
