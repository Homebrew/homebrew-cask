cask 'electron-api-demos' do
  version '1.5.1'
  sha256 '1a9931992574c2bafb8078e3156ad708e364c58e8721973ed99abcca81bb2eee'

  url "https://github.com/electron/electron-api-demos/releases/download/v#{version}/electron-api-demos-mac.zip"
  appcast 'https://github.com/electron/electron-api-demos/releases.atom'
  name 'Electron API Demos'
  homepage 'https://github.com/electron/electron-api-demos'

  app 'Electron API Demos.app'

  zap trash: [
               '~/Library/Application Support/Electron API Demos',
               '~/Library/Caches/com.electron.electron-api-demos',
               '~/Library/Caches/com.electron.electron-api-demos.ShipIt',
               '~/Library/Preferences/com.electron.electron-api-demos.helper.plist',
               '~/Library/Preferences/com.electron.electron-api-demos.plist',
               '~/Library/Saved Application State/com.electron.electron-api-demos.savedState',
             ]
end
