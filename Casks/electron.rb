cask 'electron' do
  version '0.36.3'
  sha256 'cffd1c3244c4ba364d8f9e7dab28b24b08bce180ec3b892bee2de48e597bb09f'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '20815ca140c69ad570cbb3fb32255b76eb8256276fa08c2eff4c2f0a86fbd5c2'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
end
