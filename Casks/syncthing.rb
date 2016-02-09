cask 'syncthing' do
  version '0.12.18'
  sha256 '3dabfb52bafbd081ddc04de15b8af059df6192028683d749612a15acf3927c74'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '81037fa3b5bde910d6f358c47365d8a083c28535b87574169ab6aae351e5e521'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
