cask 'electron' do
  version '1.7.9'
  sha256 '9e2a3ea75796f4e991512e055b858cdfdcc159b9c8e5b19c53be07102ed513e9'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '49d509921f87492a9a878dc876c44c06c0b10c2693969b0d28fcb3b6891d0fd6'
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
