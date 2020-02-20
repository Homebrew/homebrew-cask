cask 'ipfs' do
  version '0.10.3'
  sha256 'da4bc0b28e0db7e01dcde4d63d7188e488e6713c474eb3efca721edd3402d6f5'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  app 'IPFS Desktop.app'
end
