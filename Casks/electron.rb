cask 'electron' do
  version '1.4.8'
  sha256 '948a13d6a61ff7bddb1f00b3d8fc5cdd3b7da4abf67966b8eaa862290212638c'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '5de3f60cee90610008cfdb3afe9d2bb064e154436548ae2cc1fa3565e0b83cf8'
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
