cask 'electron' do
  version '1.0.1'
  sha256 '45ff9f84f21ddeb4d4d4909983cee9b975c47ff18a554a6c0514055a55512a4a'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          checkpoint: '8ef783ace628ab502a2458207ecc2c69ad60657ad48b48e65da6ecdc515cefe1'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
