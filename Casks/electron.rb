cask :v1 => 'electron' do
  version '0.33.0'
  sha256 '42dfa1fa23acf206b9e1fb92534f5c4c0df5194e988e669082620b7bf9c9b2ee'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '8243bd42a1d6538a514602e545bf8663241634192d16f6a0026a651c58100ce1'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
