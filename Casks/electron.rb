cask 'electron' do
  version '1.8.6'
  sha256 '5c5f59aa38d33198a6de2669cafc93f3ed9e1f9b28c38387cbade29dd80ae8d5'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '4af38022353a43d3f7df690ba5b2236f7586fe07d535bc033370f0ad4f35fde5'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap trash: [
               '~/Library/Application Support/Electron',
               '~/Library/Caches/Electron',
               '~/Library/Preferences/com.github.electron.helper.plist',
               '~/Library/Preferences/com.github.electron.plist',
             ]
end
