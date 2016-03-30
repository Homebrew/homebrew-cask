cask 'linear' do
  version '1.2.0'
  sha256 '2bb17d6c529d4a8b8a8443803e44d976271ca298bef3f22b43ca9d5b41dc8327'

  # github.com/mikaa123/linear was verified as official when first introduced to the cask
  url "https://github.com/mikaa123/linear/releases/download/v#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          checkpoint: '604b2fdad9d513e82c80ae1efccab182aa36335a7488b14eb753158969a6b571'
  name 'Linear'
  homepage 'https://mikaa123.github.io/linear-website/'
  license :mit

  app 'linear.app'

  zap delete: [
                '~/.linear',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.linear.sfl',
                '~/Library/Application Support/linear',
                '~/Library/Caches/linear',
                '~/Library/Preferences/com.electron.linear.plist',
                '~/Library/Saved Application State/com.electron.linear.savedState',
              ]
end
