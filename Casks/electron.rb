cask 'electron' do
  version '1.4.15'
  sha256 '93a8e912ab0771b879d6959550f083fde3b643d2cb666e848aff334cb09f0f5d'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'af42a3d933d70d264d5d400176d051211c06dcf21b7bc526104580d72fcfa1cb'
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
