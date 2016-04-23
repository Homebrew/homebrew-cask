cask 'syncthing' do
  version '0.12.22'
  sha256 '148bb90e5991648e4ca9588c5bb202a707aa5e4e2e65299232294d418110fa7d'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '8a5025eca40c16d75bca0d671ffe17ae51cddc72af77ec7a6ec4b89cb0cd1d74'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
