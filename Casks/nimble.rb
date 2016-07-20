cask 'nimble' do
  version '1.3.1'
  sha256 '87edf0f9192a94662f61f0d424f81dceb6f6993a229862298253d5ac748c26b0'

  # github.com/madebybright/Nimble was verified as official when first introduced to the cask
  url "https://github.com/madebybright/Nimble/releases/download/#{version}/Nimble-#{version}.dmg"
  appcast 'https://github.com/madebybright/Nimble/releases.atom',
          checkpoint: 'be158c14aef55188b88232bc3459f35b3426d74e55fd2127f14f1045cd45d929'
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
