cask "ipfs" do
  version "0.13.1"
  sha256 "ec3fae4bc4f0f1cb4a3b892abc4e19de36918dc36fe9ede3aa193a7dfe8ef21e"

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}.dmg"
  appcast "https://github.com/ipfs-shipyard/ipfs-desktop/releases.atom"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs-shipyard/ipfs-desktop"

  auto_updates true

  app "IPFS Desktop.app"
end
