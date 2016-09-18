cask 'electron' do
  version '1.4.0'
  sha256 '35c662d3428d7d18bc64a9129dbe766ad4c27d4ab0b50a2ea3796d7db07d5a3c'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'a85c41cba76ace3100542b2570bedbf722315665fcc0761c710a66a26214d1fb'
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
