cask :v1 => 'electron' do
  version '0.24.0'
  sha256 '690ece15e47d8285d15f4fb8af53bccc9eee84501ba592edb918899931541f0c'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom'
  name 'Electron'
  homepage 'https://github.com/atom/electron'
  license :mit

  stage_only true
end
