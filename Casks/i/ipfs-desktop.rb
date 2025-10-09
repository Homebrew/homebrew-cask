cask "ipfs-desktop" do
  version "0.46.0"
  sha256 "d5a74edf33ed5b29dfd3ac1f237e7e37db99e5802852a9690834f5b92b34a4a0"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}-mac.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
