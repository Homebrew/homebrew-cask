cask :v1 => 'electron' do
  version '0.25.1'
  sha256 '87c97fbe768c61773226e51a12e0567020e9c5a9807cc75f3ab87d38543c9d03'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  stage_only true
end
