cask 'nfov' do
  version '1.0.6'
  sha256 '8e535cc342de50b8b6f76cef91c41df2fbb04aaf440100f69ded1953a3c40aab'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom',
          checkpoint: 'd56cd52fb1b00c8b3e4a210c4f049811752b2a0f146b30d1296544a163be52a6'
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
