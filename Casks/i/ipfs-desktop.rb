cask "ipfs-desktop" do
  version "0.44.0"
  sha256 "5733f40c1780a2f3c5db21c96a8bd7eedf90478d115cfa937f2e62ca687dfbe1"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}-mac.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
