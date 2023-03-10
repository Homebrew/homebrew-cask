cask "openlens" do
  arch arm: "-arm64"

  version "6.4.6"
  sha256 arm:   "008097abbc6ba237ba3ef091f215242bb08489781cfb1b1c1dcdf48c592a9b1f",
         intel: "a295a45912226eed63371f53faa4c5dd46ee434560c3526135a08c3b6d02d0ff"

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
