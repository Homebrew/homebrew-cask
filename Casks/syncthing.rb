cask 'syncthing' do
  version '0.12.16'
  sha256 '62f7492ebd7a155f6e66e1ba22c68b829463cb53774f4f91a6d8390263f04d7e'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          checkpoint: 'e9a49a762ef12e8d4dd4cdec4ec70c0e610fb27bb0eac851d0f4364cc96c294f'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap delete: '~/Library/Application Support/Syncthing'
end
