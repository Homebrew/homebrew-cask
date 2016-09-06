cask 'electron' do
  version '1.3.5'
  sha256 '314030954577f20f09d480fec0cd529b5cfc373d97a2af6ff8cf306c9596662e'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '337bd79428ac63d0eeee3d5b158923fc599daa7139b2ccb1e42118b9c1e85212'
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
