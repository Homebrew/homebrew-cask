cask "openlens" do
  arch arm: "arm64", intel: "x64"

  version "6.5.2.286"
  sha256 arm:   "470668badba23334be2f41297f95f2bab4ecc2457354f4e6a89fd02da0714923",
         intel: "998df487b059fb2930a53de94a3e170e5e031cf3fb1185adfa67b9f989783265"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}-#{arch}-mac.dmg"
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
