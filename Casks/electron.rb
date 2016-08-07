cask 'electron' do
  version '1.3.2'
  sha256 'c52593cf1d54181ce13bc6d8cf25fbde734735dfc03123e00945e99d70b20617'

  # github.com/atom/electron was verified as official when first introduced to the cask
  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'e3be1ceb707d0588bef897b6213e3e826de0c502adf1088f2e37ffadb900b9d0'
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
