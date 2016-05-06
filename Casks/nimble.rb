cask 'nimble' do
  version '1.1.1'
  sha256 '7b106f527adab8fa8fc4054a8dea6e6944cb3b3dbb8c128dbc0a18552e5be88b'

  # github.com/madebybright/Nimble was verified as official when first introduced to the cask
  url "https://github.com/madebybright/Nimble/releases/download/#{version}/Nimble-v#{version}.dmg"
  appcast 'https://github.com/madebybright/Nimble/releases.atom',
          checkpoint: '295a85ecdef78a59314a243a57e2af14f5f13365f6ae3e8ac0042dde017355cc'
  name 'Nimble'
  homepage 'http://madebybright.com'
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
