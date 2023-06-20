cask "openlens" do
  arch arm: "-arm64"

  version "6.5.2-356"
  sha256 arm:   "b006d48a273a04aebaa057e32e4d96158472865622ec3824cc1b5d5ebc6988e8",
         intel: "6f47d84cfcff42b5ea97ca3ab81861d7a3745700ceb3732a58d65c9be3920836"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
