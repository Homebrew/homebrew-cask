cask :v1 => 'syncthing' do
  version '0.11.25'
  sha256 '4c27f847fd1a3716335efc20fbfc5f009d50ee3554b1940659fd629e70c12262'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
