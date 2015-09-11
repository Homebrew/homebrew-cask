cask :v1 => 'electron' do
  version '0.32.2'
  sha256 '25906909a0fdf6751357ec2e6d4cea5463423923a541331edd5a1f6afb437783'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '00395e8a965dc7b92c646824ae60cfa02a660e2f552eb2927a67c660bd95f89d'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
