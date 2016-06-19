cask 'electron' do
  version '1.2.3'
  sha256 '9067a6aceed2ce71b1bebb1fb30ee429c6a21b9bfb59eb0c9fe2124d76748e05'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '19604d8b4fa788e5e940b988b4298aa1c4fdf3cdb3a4aea22f6375611c100813'
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
