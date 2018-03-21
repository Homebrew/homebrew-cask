cask 'blockstack' do
  version '0.26.1'
  sha256 '27e9e74a1f2fc202f23bf01626b14e739eab84bde5ee8f24a4fbfa8dd80c6542'

  # github.com/blockstack/blockstack-browser was verified as official when first introduced to the cask
  url "https://github.com/blockstack/blockstack-browser/releases/download/v#{version}/Blockstack-for-macOS-v#{version}.dmg"
  appcast 'https://github.com/blockstack/blockstack-browser/releases.atom',
          checkpoint: '756e90a915d6d91aa13c92220f9844d3cc21695efed559dc02e8536b92cd92f6'
  name 'Blockstack'
  homepage 'https://blockstack.org/'

  depends_on macos: '>= :sierra'

  app 'Blockstack.app'
end
