cask 'ipfs' do
  version '0.12.2'
  sha256 'cc51561e1a28d25ce0f5d738bbe529150ca081faeaac2f843fb1e51b63240793'

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast 'https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom'
  name 'IPFS Desktop'
  homepage 'https://github.com/ipfs-shipyard/ipfs-desktop'

  auto_updates true

  app 'IPFS Desktop.app'
end
