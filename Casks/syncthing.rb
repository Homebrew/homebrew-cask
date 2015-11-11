cask :v1 => 'syncthing' do
  version '0.12.1'
  sha256 '6ecbdd3d4eea35deaad55317ea7b86984c8d09cf6f0b2a2432cb0c53e44d5f14'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
