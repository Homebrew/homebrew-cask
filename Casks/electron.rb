cask 'electron' do
  version '1.6.5'
  sha256 'ad2d76b03ecb92cea828968e63c5c93042becd1adfcfebc39db594a7893817d5'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '20ea3d80c0e90e9981fa0f8b15ffaac3d8a7b6328c8475139242435d9cc5098d'
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
