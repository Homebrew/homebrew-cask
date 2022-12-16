cask "openlens" do
  arch arm: "-arm64"

  version "6.2.5"
  sha256 arm:   "487d3232515069d71fca2e7506c449cb4aad3669e0f345d66272a97b5507702b",
         intel: "edb95dd9c105ccdc5e64b94432175ad5812502eb8a1b36fa8a2bb6a2b1f3c00a"

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
