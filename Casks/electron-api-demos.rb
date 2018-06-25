cask 'electron-api-demos' do
  version '1.3.0'
  sha256 'd0b2fd3a3e0306f84f6734010b271cd1f2dc642e81a5a0b0b16cfc9b25814107'

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
