cask 'syncthing' do
  version '0.12.24'
  sha256 '6622a87227bd895901dd4e0416f15d31ea7f141719beeee9e8f92578e9acda9a'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: '3448bc4f884467b6a169ae34e7b8c9337515f32b92048fcde2128b3cf34ee176'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
