cask 'syncthing' do
  version '0.12.20'
  sha256 'c66397aab3fd18260d717c54b8dda3cd22d5f3f295b4248e5dc9c919f202d1d7'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '287e1a54622417cce08649a437d3d4e43fbfa82e3f383ea6e8aca8416378f26e'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
