cask 'syncthing' do
  version '0.13.5'
  sha256 'cf7f276e993b3a5d1f772da074f4f0ea7cc74e7cb220feb936ad7c87c3553e0f'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '9654c84fb7c7ac74e290b0117f02e09a8e9cb9b641d12d66b40ed3ab62bd0719'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
