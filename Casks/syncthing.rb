cask 'syncthing' do
  version '0.12.19'
  sha256 '6af054919039ad07d1578598491c2f6659b0e409a4676d5f5464a8a54b5589b5'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '20c1d1e17f21fa05f16708d8a916118216812555dd4d41913e6a945e3bd8ce95'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
