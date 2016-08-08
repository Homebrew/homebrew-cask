cask 'syncthing' do
  version '0.14.2'
  sha256 'ca5d616cd4762d4f7b39f627c14dd35419d5146f89bde328cc71b9d1de0352c7'

  # github.com/syncthing/syncthing was verified as official when first introduced to the cask
  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: 'a89d1a18b6b6170a8f3bb3f714f41e2e55a814de4bc23b1881672b337470604c'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
