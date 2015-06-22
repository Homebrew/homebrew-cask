cask :v1 => 'electron' do
  version '0.28.2'
  sha256 '46ce4b140240fdbd34664db523dcc286684d815efa469132e6d2dd4ee2d6914a'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
