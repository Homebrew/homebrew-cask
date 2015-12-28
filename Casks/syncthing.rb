cask 'syncthing' do
  version '0.12.9'
  sha256 '458e70473997212713440ae47ee7bae06c552ac2202cd842067ea9559cf597d3'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          :sha256 => '1fa1ec8eb519bfee17f2b2b2eb0d95adf0fc542f62374e2b149af09a87746048'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
