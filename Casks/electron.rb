cask 'electron' do
  version '0.36.4'
  sha256 'd9d02c53cd7911ce20eee75d3307118ab8affe3cedd3587a27d459333419fd9f'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'cad21d1cc705c975670932b7b3095eb07cee96bbf36675a8ee7aa343ab4cd0dc'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
