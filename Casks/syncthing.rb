cask 'syncthing' do
  version '0.13.7'
  sha256 '58c0063cecef9d2969b96223e4cacfabb91f2df0f7a7bf43860a50a344b487f7'

  # github.com/syncthing/syncthing was verified as official when first introduced to the cask
  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '85ca27e629ca442a77752696fcd65dd4ef789a7465ea83c6938ce398bc386d4c'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
