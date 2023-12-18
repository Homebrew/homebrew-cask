cask "ipfs" do
  version "0.32.0"
  sha256 "2d7d565975a1041e4bc3f9dc7c3cb0b39e8ad89d4ec0f12ee9b556b7f8473a65"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}-mac.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater/",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
