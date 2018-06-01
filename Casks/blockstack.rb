cask 'blockstack' do
  version '0.29.1'
  sha256 'ac92cd6b94fb4a6f119155bce5972b7a70117236394226eabc25816441d1879c'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: 'c69e66f8764011a140a3d014f1e27019d5fea0e106fa0a22f4c5c6f690c06f80'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
