cask "openlens" do
  arch arm: "-arm64"

  version "6.5.1"
  sha256 arm:   "81e5c356578cf063ca173924c159db23f3017ef9b381d5d0cbeccba34cc32d5c",
         intel: "894084d3e8a0144e7b20dc80feeddb87799195ef90fd1b30d82a372b323e2e59"

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
