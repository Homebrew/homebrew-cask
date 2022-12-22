cask "openlens" do
  arch arm: "-arm64"

  version "6.3.0"
  sha256 arm:   "71c8a86161d17143251e6a9bf202d7d014573a6c6906c06f5d9ece33c2889f06",
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
