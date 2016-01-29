cask 'electron' do
  version '0.36.6'
  sha256 '4881f7121bacc8bf7de94c890f35c87ef47fb385ca4dad09245148252e8730cb'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'b405f3b0fb385ae4a4883996067ecb37a6a2c15ca0b4bce55f612e69d42e4bd8'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
