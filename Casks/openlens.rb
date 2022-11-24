cask "openlens" do
  arch arm: "-arm64"

  version "6.2.1"
  sha256 arm:   "76941dcb7578bb95ce7af07b77e1bce34a76c54386931052930ebe875559919a",
         intel: "57db6cff26cb6163391cbe46c98d6be1aa2846d19f11bcbef3a22f740035011a"

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
