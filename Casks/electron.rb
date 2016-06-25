cask 'electron' do
  version '1.2.5'
  sha256 'd27f0e1f7712c01e49e3bbf40e741be39fc21790b4206edd1e141a6b75ead9e5'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '8def9dee4c6e474c0dc2196f41f18c6e0a47b315b9546a64c24063362de3fd71'
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
