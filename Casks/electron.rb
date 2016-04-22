cask 'electron' do
  version '0.37.7'
  sha256 'c0098c7acf67dfe3ad3f9c932a9bb83a3d44a00dfa5759701443fd5be74692bb'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '1f1e21c694a4d3422b29b1e1c61d9aba8cbb583addc661b7682883d78e9d01d2'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
