cask 'syncthing' do
  version '0.12.8'
  sha256 'a2938799fee5d29daab750ea05f5c0e72f343a4be696e1f39421f4db05db82f5'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          :sha256 => '1fa1ec8eb519bfee17f2b2b2eb0d95adf0fc542f62374e2b149af09a87746048'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
