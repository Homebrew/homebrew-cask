cask :v1 => 'electron' do
  version '0.29.1'
  sha256 '7b587eba1dc1c4612cbb600b0c6484a61eb70e1d77207b201af771beace1d6b0'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
