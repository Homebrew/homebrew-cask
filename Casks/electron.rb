cask 'electron' do
  version '0.36.8'
  sha256 'd229ac37e70c065cbb23c78dcc2957eae4ed4f8fe9d896e4efc6fc5903b42c1c'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '7b101a9ee6fd0eacef40b3d9fbac4c3b81fd166530f3cadf560b0d2f6310f468'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
