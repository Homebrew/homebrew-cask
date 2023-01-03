cask "openlens" do
  arch arm: "-arm64"

  version "6.3.0"
  sha256 arm:   "bd356557c1518f7e2d95166de4d0abfff6e4c49141c060fe7e3eef2a0303a1f5",
         intel: "a3dcac335e75f267bfd3f98f6911fd831ac8688de60dbe68399cb0746087e2cf"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
