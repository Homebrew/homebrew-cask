cask 'syncthing' do
  version '0.12.17'
  sha256 'c5ab37deb53a76449fc2f6a3b02631100c07bf306940958096ee92745dbc90f3'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: 'c9a81193ec221e8c9e88cd610d6d624ef4f4ecc28f83a68f1cbb148c4f16e71e'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
