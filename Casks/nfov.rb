cask 'nfov' do
  version '1.0.7'
  sha256 'b3b57db8d14ea24a5ada289fcda36d4e090bc6ec7cf04aef356c0ce96c2067eb'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom',
          checkpoint: 'cb0c968bf40baf345c5715897a4de2db972245e37d06c0ce178ee396dcb5eee8'
  name 'nfov'
  homepage 'https://github.com/nrlquaker/nfov'

  app 'nfov.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.nfov.sfl*',
               '~/Library/Application Support/nfov',
               '~/Library/Logs/nfov',
               '~/Library/Preferences/com.electron.nfov.helper.plist',
               '~/Library/Preferences/com.electron.nfov.plist',
               '~/Library/Saved Application State/com.electron.nfov.savedState',
             ]
end
