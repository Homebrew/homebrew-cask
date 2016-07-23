cask 'nimble' do
  version '1.3.2'
  sha256 'cda59180d1cb7a0561121ef6f7a18f9646101ec4ffe3d17112787d1cd84c69c1'

  # github.com/Maybulb/Nimble was verified as official when first introduced to the cask
  url "https://github.com/Maybulb/Nimble/releases/download/#{version}/Nimble-#{version}.dmg"
  appcast 'https://github.com/Maybulb/Nimble/releases.atom',
          checkpoint: '9d4b6d88196ed6314eee4821af48b6fe3d0b461343641103e15c56354a83da9a'
  name 'Nimble'
  homepage 'http://maybulb.com'
  license :mit

  app 'Nimble.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.nimble.sfl',
                '~/Library/Application Support/Nimble',
                '~/Library/Caches/Nimble',
                '~/Library/Preferences/com.electron.nimble.plist',
                '~/Library/Saved Application State/com.electron.nimble.savedState',
              ]
end
