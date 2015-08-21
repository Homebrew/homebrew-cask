cask :v1 => 'electron' do
  version '0.31.0'
  sha256 '284a5525d268c91f91269a9d3609fd67f7acd5fd142d08d81015ef55aeda9d86'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '6a5a9b2f44d113406b1f2e1f78b363fa972795f1bd9a912b518e00e275b21042'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
