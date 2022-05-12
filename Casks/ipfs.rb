cask "ipfs" do
  version "0.20.6"
  sha256 "00f1affd9b96e5b5716345d0970beeec19ca3198c5cbe3f47eabaa9521ceee31"

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

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater/",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
