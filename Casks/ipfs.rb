cask 'ipfs' do
  version '0.11.4'
  sha256 '3a19a436ee50e670d7b0cc26de8fcfabb9cae1d4d12efe428f33683ce6079198'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  auto_updates true

  app 'IPFS Desktop.app'
end
