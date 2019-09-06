cask 'ipfs' do
  version '0.9.0'
  sha256 '7e49c3793e288be9fcf714989b435a8ecc8f488ea14dc4a5298f2d1ee7c20e54'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
