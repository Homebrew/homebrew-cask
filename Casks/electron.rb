cask 'electron' do
  version '1.2.7'
  sha256 '826a9c196e443c6b95df1e8397ad8d909ff1c201488b75664d4750b1820e4b08'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '0cf4f0dd59364712a0d58c73cf096a86769e933d2a7a9578ee91f1ff9a3c9567'
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
