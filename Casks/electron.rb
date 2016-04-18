cask 'electron' do
  version '0.37.6'
  sha256 'edd2defab107da4446a59bf0d00dc5b74237c08d1099ae8dda8c5191f3514240'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: 'f8f5dadc0e90b9243d5201f967ecdcb771ff6f2006d0176c64862a0d4b4fea5e'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
