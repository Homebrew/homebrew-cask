cask 'syncthing' do
  version '0.12.11'
  sha256 '7e0cd625ed6dda3212e616f082374e6968fb7ec898f23c59e668fd11fa81f6f7'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          :sha256 => '7bc079726115d0e8dc6f3602e4fd805ee8c9cffe82f030385dbb275d8dd1c1d7'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
