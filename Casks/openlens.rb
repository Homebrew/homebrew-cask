cask "openlens" do
  arch arm: "-arm64"

  version "6.3.0"
  sha256 arm:   "caa79871cbb262cd7ffd7fe3e2096d419d57178697edff1405158437718ca4c9",
         intel: "2eb1848bb189041c4475054631a5b33a8ccd00c6eedbb74776b3dd1f54db7898"

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
