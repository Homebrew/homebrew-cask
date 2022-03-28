cask "ipfs" do
  version "0.20.4"
  sha256 "5078eefb80c3002d8e48817b029d72c8465be1fb6194ba85599fc80243b385bf"

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/IPFS-Desktop-#{version}.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs-shipyard/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "IPFS Desktop.app"
end
