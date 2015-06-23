cask :v1 => 'electron' do
  version '0.28.3'
  sha256 'ea3d8c7b4494c9268691bf8ae8b0fba1f14bc8db4377a122b60ab5d0e4c933cd'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
