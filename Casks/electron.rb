cask 'electron' do
  version '1.3.1'
  sha256 '1b83459022cbb338ce0d618024d584a08d7648f4a62e54f12fbf3d7d8fe6edc5'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'd541fe97f88f8f9a57aa8228cf0f3c01fd7b0a905e92a69ed0a41edf0c90a42f'
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
