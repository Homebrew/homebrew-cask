cask :v1 => 'syncthing' do
  version '0.12.5'
  sha256 '7dcc3d5c999e2584619460d9619ce3a2381b9dcfa9698f3a7d70381e98bfbd35'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
