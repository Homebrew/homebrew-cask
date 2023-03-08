cask "openlens" do
  arch arm: "-arm64"

  version "6.4.4"
  sha256 arm:   "3bc2969ddaa1ba0e513198f6752411b2d974735b52b416f738d90e5b64574d94",
         intel: "f86c6e3158de2cdbc14d0582346cfd2a1ba731dabcc5f4eb65379ada5258e603"

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
