cask 'electron-api-demos' do
  version '1.5.0'
  sha256 '2a9f547cff863164dcfb262b11075d331f78977ff13d372ec12feb47f45e8e03'

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
