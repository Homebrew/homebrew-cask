cask :v1 => 'electron' do
  version '0.30.2'
  sha256 'b06f790496480f550e8ce4f700ce55781ad9fc7cc5938b7600182c4b873263e6'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '66f0910b026bc6bfc2df0bb7a409cc31e44b456445c9f402ac49e2dd10d87458'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'
end
