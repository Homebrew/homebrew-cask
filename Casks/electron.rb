cask 'electron' do
  version '1.3.4'
  sha256 'fb558343ff4e81b2b7b7bdc4dbd5be3da52093fe6564340b2c0d0ed9bc81e09b'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '9c29db2a5bddd4b01512bc9bab09f45791360f7ee59578baa289509844523b92'
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
