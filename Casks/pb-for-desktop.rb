cask 'pb-for-desktop' do
  version '2.9.0'
  sha256 '9eaaefc6f93a231a204b7d37145473b002240b8e3a029ccf893f757777dbf6c7'

  url "https://github.com/sidneys/pb-for-desktop/releases/download/v#{version}/pb-for-desktop-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/sidneys/pb-for-desktop/releases.atom',
          checkpoint: 'cc9b404807059f60c4c0f295d9caed3849813223ea927e635871ca0021fae3e7'
  name 'PB for Desktop'
  homepage 'https://github.com/sidneys/pb-for-desktop'

  app 'PB for Desktop.app'

  zap delete: [
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/PB for Desktop',
                '~/Library/Caches/de.sidneys.pb-for-desktop',
                '~/Library/Logs/pb-for-desktop',
                '~/Library/Preferences/de.sidneys.pb-for-desktop.plist',
                '~/Library/Preferences/de.sidneys.pb-for-desktop.helper.plist',
                '~/Library/Saved Application State/de.sidneys.pb-for-desktop.savedState',
              ]
end
