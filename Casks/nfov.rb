cask 'nfov' do
  version '1.2.2'
  sha256 '177386de3e0ffe0fc5795e2acb0869e14ab630eb78dc01e544da16f6315b4a24'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom'
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
