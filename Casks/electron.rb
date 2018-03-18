cask 'electron' do
  version '1.8.4'
  sha256 'ba3c687886835f3ae2e78ad0eb5f303dceef8c0408ed1a35d661005aa5fb7311'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '38fcaa02ea69c145f174f5c3f5512dbd11c29326de4f9444174159a658f0f3fc'
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
