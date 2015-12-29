cask 'syncthing' do
  version '0.12.10'
  sha256 '2090e899c05fdb6cfdc1739a31ca5ea1051d11a55a3761e18ea85b2260295d45'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          :sha256 => 'b65a8cbf6b6cf4347043687f7ec0b9d03043ee7e10bf003e50fdf9db27b654f4'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
