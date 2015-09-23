cask :v1 => 'electron' do
  version '0.33.1'
  sha256 '954f9dbf7b27f242137d0c02a22bdaca1a0a356931a3e52e03f527554a6d4c7d'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '6a27091472c1a8e49c93e56f5a8ac5f07d3fb788922dcc939dc97cfc2f323efb'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
