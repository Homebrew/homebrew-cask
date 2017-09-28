cask 'electron' do
  version '1.7.8'
  sha256 'f1a027f6356d226f85c9862ad175543f004df8ef7bd7950732e16e6466e8e2f3'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '923d0b288ae07101d5e473b54e62cbea98ee8b172623969225fbb1930fcfb5c5'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
