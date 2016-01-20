cask 'syncthing' do
  version '0.12.15'
  sha256 'fda9cf0eda8935d97f4ed2875e570554db39471eb09d037b7bafc3e3b2cbb1a5'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: 'be5c42345e5832780c6a8031d8ddb00ffff19ae97d646af0e176d52e62b729d1'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
