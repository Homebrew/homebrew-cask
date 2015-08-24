cask :v1 => 'syncthing' do
  version '0.11.21'
  sha256 'f7089e6e9c4382a197b6f8b1caa9b63239dcb43a4f950b12dba0db25b2b4af77'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
