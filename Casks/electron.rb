cask :v1 => 'electron' do
  version '0.27.2'
  sha256 '7eeae53bba6ff9dba3e86e5a7dc9a56fb46bd0181e26ade0f29f0bce84c0680f'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
