cask "ipfs" do
  version "0.13.2"
  sha256 "e05caeaf457d994ab6b4ce25f6e2572b227f632f378c63a40cfbf5bfd9bf5efd"

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/IPFS-Desktop-#{version}.dmg"
  appcast "https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs-shipyard/ipfs-desktop"

  auto_updates true

  app "IPFS Desktop.app"
end
