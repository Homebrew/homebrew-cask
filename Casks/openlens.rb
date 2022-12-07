cask "openlens" do
  arch arm: "-arm64"

  version "6.2.5"
  sha256 arm:   "12354d266cda1957625c62c5d6b37f944e87c0257d594fe59f9ede202f949a37",
         intel: "afdcdbe427ac730808e3105bda46264981be77d9e7061e0c76c9a822f00ed9c8"

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
