cask 'electron' do
  version '1.4.13'
  sha256 'dd834906044dbfb24b5c6bc8bb325e89ba56e453fd2ff3ca52f7f8a056e64429'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '3fac69a8bb384c577eff470cf62784ad4d667080cbb4db0d18358f786bb8141b'
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
