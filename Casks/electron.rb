cask 'electron' do
  version '1.2.6'
  sha256 'b86f83c3ed6a9f5c1cfe04d62405f2ad243dca6675a4e6405b2fa80d9eb03eb4'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '662b7c23f4128370570b6294e06a376f2bdc5ef1fecf4be4a9270ab9ebf9ebfb'
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
