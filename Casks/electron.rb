cask :v1 => 'electron' do
  version '0.33.6'
  sha256 '31138f2a5d54d8e09c145dfb1bb3271a154ce9ec9b4ed29438e3b510cdb61cea'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '1567ce0344fd8dade9394f810ffa1ee91dcb0d9d57227d8fc702f49c94a34bed'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
