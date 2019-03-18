cask 'nfov' do
  version '1.3.0'
  sha256 'e517663b051fd63fc38da121928f718b878c7f201ff5e0b180339e19f113ee29'

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
