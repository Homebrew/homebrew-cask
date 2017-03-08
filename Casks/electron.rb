cask 'electron' do
  version '1.6.2'
  sha256 '6e2e9d3fa3197c00e243f3eba7e24e9c1ff318377422106d51ede6b63b814e86'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'db463e1ca5546a297361f79c9b9303d6034f78f115028a26fc3755eb09d5a31a'
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
