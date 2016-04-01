cask 'syncthing' do
  version '0.12.21'
  sha256 'f2a4dbc5fd3956baa1f3b1a9cd98dbaf20b8d497a243ad20e78826002a2eb98c'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '5e649b62f810f550dd2458ea026a7c7ff75810b1a9a905b3a73f92cdc8601ee8'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
