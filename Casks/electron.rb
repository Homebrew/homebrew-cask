cask 'electron' do
  version '0.36.7'
  sha256 '8bcabf4ae71be9695eba6545b4b0adf769a89357e0b51b4a4c2311815b69e2fd'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'ef0a96d414086e9704b0221f4e2169fe7606c89f4cf27c35ee3b29d97718ffff'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
