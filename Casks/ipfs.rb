cask 'ipfs' do
  version '0.9.3'
  sha256 '3f009d08ac5412fb6920d04f646708104e903c20152959f13ef3b439d3b2be59'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
