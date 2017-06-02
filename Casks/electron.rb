cask 'electron' do
  version '1.6.10'
  sha256 '1e3118f2421cfb3af07000ca255009e6c32bda026bda016d63aa3086014789a4'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '72fe4eef9cf453d5cd2d6d65fdab88c03e6644967ffbb4598e27d41ea5a8ad28'
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
