cask :v1 => 'syncthing' do
  version '0.12.8'
  sha256 'a2938799fee5d29daab750ea05f5c0e72f343a4be696e1f39421f4db05db82f5'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
