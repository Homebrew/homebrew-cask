cask 'syncthing' do
  version '0.12.12'
  sha256 'f162ee79af69316d8df7d7c7230fcebce99abd270848f6784c83f09eebc5e84f'

  url "https://github.com/syncthing/syncthing/releases/download/v#{version}/syncthing-macosx-amd64-v#{version}.tar.gz"
  appcast 'https://github.com/syncthing/syncthing/releases.atom',
          :sha256 => '23ebc7d82048d2d8d09cf910cd02686db7136ab625e814c9ea60d5db5350a7e7'
  name 'Syncthing'
  homepage 'https://syncthing.net/'
  license :mpl

  binary "syncthing-macosx-amd64-v#{version}/syncthing"

  zap :delete => '~/Library/Application Support/Syncthing'
end
