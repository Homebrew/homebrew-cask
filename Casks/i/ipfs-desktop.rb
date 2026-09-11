cask "ipfs-desktop" do
  version "0.50.0"
  sha256 "1fc85e650cc606861ab8a9a279a2543cbbbb9c78c390cd47ee6a06b334dac533"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}-mac.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
