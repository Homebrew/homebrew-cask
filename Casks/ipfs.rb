cask "ipfs" do
  version "0.21.0"
  sha256 "d14f8ad2b96d52757a2da14a07da4c083eb21b466fdf28bc1168487df243ab3f"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/IPFS-Desktop-#{version}.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater/",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
