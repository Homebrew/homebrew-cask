cask "ipfs" do
  version "0.13.1"
  sha256 "27e7cdf7521cf500b6d5d793910076715e7aa386139a1169581bdd3041c5793c"

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast "https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs-shipyard/ipfs-desktop"

  auto_updates true

  app "IPFS Desktop.app"
end
