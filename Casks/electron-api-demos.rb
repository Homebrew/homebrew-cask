cask 'electron-api-demos' do
  version '1.4.0'
  sha256 '20386665a0d758e9378725524208a87d32babcf094088c8f2eaf825c6629c217'

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
