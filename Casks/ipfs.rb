cask "ipfs" do
  version "0.13.0"
  sha256 "8927be0f9d7decd4c7def13472e69a7ced50f7d086b78dac29b3a3f4da04438d"

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast "https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs-shipyard/ipfs-desktop"

  auto_updates true

  app "IPFS Desktop.app"
end
