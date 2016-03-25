cask 'syncthing' do
  version '0.12.21'
  sha256 '4576fe0f305ba3d4631ad32124fb4149ce690beb10a7089218c44c59c2910ae4'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '5e649b62f810f550dd2458ea026a7c7ff75810b1a9a905b3a73f92cdc8601ee8'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
