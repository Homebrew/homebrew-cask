cask 'electron' do
  version '1.2.2'
  sha256 '3f5cbe242edc99718faa7adf0c2b728696cdb3549c9289a4d312034086bc1467'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'cdfab1240683476cdd4082636e363366a2b1fa5805567a7592f9bd9ad7b4124e'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
