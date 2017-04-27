cask 'electron' do
  version '1.6.6'
  sha256 'c464773064ff706f02039aafda251f28678943c99bdc5f5a82d553317c14e4c2'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '0e9e155816012c7fa8c232f5ad6c5a3f7f3b3b32f56df38ca6dd22f247dcec11'
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
