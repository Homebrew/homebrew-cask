cask :v1 => 'electron' do
  version '0.25.2'
  sha256 '1175c6c581460b01f8fc6a0a1dd5805f8c53d309658a0f093d73a5c87492e5b5'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  stage_only true
end
