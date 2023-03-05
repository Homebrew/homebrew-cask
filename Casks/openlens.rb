cask "openlens" do
  arch arm: "-arm64"

  version "6.4.1"
  sha256 arm:   "0b879cfec55756fbecfb22abdddc834dae10c28e1e77a04a82119ef99b690cb1",
         intel: "30729dd7b6ae396fb6e9a8f71cc36120e176af6dab3916cc8732ac7ca548c8f0"

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
