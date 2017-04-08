cask 'electron' do
  version '1.4.16'
  sha256 '0881abc3d51fd80b2e0e02e449e7b2719d48a89ac41b549b235aff5bbd4fa223'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'e364dcf83a8b0c77bdc5e793ac66410b29cf9694e5b9cbb94e3c6f61049c9fef'
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
