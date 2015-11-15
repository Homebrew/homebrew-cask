cask :v1 => 'syncthing' do
  version '0.12.2'
  sha256 'ff395e64a3b91d108b94fcc67f430c6fc757179b43e30fd02df0fefa9cc7e0ce'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
