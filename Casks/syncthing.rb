cask :v1 => 'syncthing' do
  version '0.12.7'
  sha256 '427930d3ce9c53959dc7c46d477a27b9cbb1c15bf1671d4dc0601bfa6101ee19'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
