cask 'nfov' do
  version '1.0.3'
  sha256 '4b832df6a65be9fb9317531ea734049b03e96cb93977882a9612268a3be6353e'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom',
          checkpoint: '4f931faac9a6bda2818eead2c3e8fb49d4e06828b90d7e6f46a613da2c76ea54'
  name 'nfov'
  homepage 'https://github.com/nrlquaker/nfov'

  app 'nfov.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.nfov.sfl*',
                '~/Library/Saved Application State/com.electron.nfov.savedState',
              ],
      trash:  [
                '~/Library/Application Support/nfov',
                '~/Library/Preferences/com.electron.nfov.helper.plist',
                '~/Library/Preferences/com.electron.nfov.plist',
              ]
end
