cask "openlens" do
  arch arm: "-arm64"

  version "6.1.17"
  sha256 arm:   "4c0c29e99eb17d82967daf1d0d6d3557b76f2e82394e7389e6b00962acf80c2d",
         intel: "25e6348634a02ac6637285fd3223862ad31793bd22e8caa4ef35ab0c35018944"

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
