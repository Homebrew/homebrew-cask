cask "openlens" do
  arch arm: "-arm64"

  version "6.1.18"
  sha256 arm:   "4201023c98a295b55ad721974037ea5972a03ed1841b048685a081164751bbbf",
         intel: "2e25893479e6910d06ef51808092d3a32a6025918cc3f7687ea2b2f3342eea08"

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
