cask 'electron' do
  version '1.4.4'
  sha256 '87382e242592f295dfd9d53fc6a7c6906960b3cde870c73ad3a6ae12b8e6b20b'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '9203e03fb46b83e867f27c93da6013fdc4fd4f7fe071f4f6e314004edac6b906'
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
