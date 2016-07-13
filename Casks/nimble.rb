cask 'nimble' do
  version '1.2.1'
  sha256 '0bc516b2fd70a92328d7f9c731b077efe16ba071c1f2a51dbcb3d5be4edbd769'

  # github.com/madebybright/Nimble was verified as official when first introduced to the cask
  url "https://github.com/madebybright/Nimble/releases/download/#{version}/Nimble-v#{version}.dmg"
  appcast 'https://github.com/madebybright/Nimble/releases.atom',
          checkpoint: '86e8ca1d6c2bd442cc6c87bd4a22abda3903df6a931983159edd4121894efa00'
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
