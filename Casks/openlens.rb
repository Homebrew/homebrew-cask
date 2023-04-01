cask "openlens" do
  arch arm: "-arm64"

  version "6.4.13"
  sha256 arm:   "b4e0b54d908e796920424daeee64cb9d060188a9a1dfca96a69b95ef19e3a60e",
         intel: "2738c8dad79bfec900c048992815e8ad3b5c8d9dc036134b573d49521172628e"

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
