cask 'nfov' do
  version '1.0.5'
  sha256 'fe7ec774109e8ad282a913d4b4852f1022e579b659bf0ae8d2eec36a92a93ce9'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom',
          checkpoint: '1b24e61a9e17291f6dec1de8b9ca5d88c239d0d8d91b6bef1033a2bc1cbc8a85'
  name 'nfov'
  homepage 'https://github.com/nrlquaker/nfov'

  app 'nfov.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.nfov.sfl*',
               '~/Library/Application Support/nfov',
               '~/Library/Preferences/com.electron.nfov.helper.plist',
               '~/Library/Preferences/com.electron.nfov.plist',
               '~/Library/Saved Application State/com.electron.nfov.savedState',
             ]
end
