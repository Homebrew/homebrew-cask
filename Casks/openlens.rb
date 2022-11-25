cask "openlens" do
  arch arm: "-arm64"

  version "6.2.3"
  sha256 arm:   "e6206bf31d5588e647f088e82c88d7210c7dcb1705c4046afae3b0128acd47f4",
         intel: "3f16ba5def6d239be21b9ff587847ad64f2f845924cc97de395fd033fe6d7542"

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
