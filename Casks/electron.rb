cask 'electron' do
  version '0.37.8'
  sha256 'd2e662b8bbcab34827495553ff139d144c8c6c02f7c6fa75d037ca76f454b523'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '9c67fddd3ec1be4675c32dc6078380d100a379a5bd6de9f34bcf4d4052e66301'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
