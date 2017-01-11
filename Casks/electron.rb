cask 'electron' do
  version '1.4.14'
  sha256 '7c3a5af7a9fe59f864a55d6217f28cebaf719d46d9eb18de2ea0f7ea1137383f'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'c0cc56aceb0e13f9601ef66b88396539a33f96362ce89d490cc3d19e430e4ea8'
  name 'Electron'
  homepage 'http://electron.atom.io/'

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
