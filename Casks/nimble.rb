cask 'nimble' do
  version '1.1.0'
  sha256 '755367d441dc1065ec0d70c52455ec5b785c4659da0dd352ed9de2a447fa3682'

  # github.com/madebybright/Nimble was verified as official when first introduced to the cask
  url "https://github.com/madebybright/Nimble/releases/download/#{version}/Nimble-v#{version}.dmg"
  appcast 'https://github.com/madebybright/Nimble/releases.atom',
          checkpoint: '368ffc1fbe8ae6fa67affe2c125232dd0329d0ba1e822a435acd515d936183a9'
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
