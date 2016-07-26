cask 'electron' do
  version '1.2.8'
  sha256 '53ab867364a785656773214ba8ea0e0096702811f46a38e8d3c3769f9c2f7c4d'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '8b2ceb9a58f2b34bf3305cb5875b2f6334260efe7e0b21df5d75780ee8b1bc1c'
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
