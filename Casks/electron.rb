cask 'electron' do
  version '1.3.3'
  sha256 '7ee10f515c9a0b62a5053c7ebbac4e36248d29c40d2d766c341cf375ac4048c2'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '17e33c1b02aaf2cadefc17669c4d2199040aeed911249aa1aa6815b6a1d71903'
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
