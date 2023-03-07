cask "openlens" do
  arch arm: "-arm64"

  version "6.4.2"
  sha256 arm:   "994f49820d7a817d36d53c05fd2213872b815348bfe95ea7da681bc909f76a63",
         intel: "b2b9981fe5f9cf0e12ad56d7ad01dd7a7b97806cecc3257a853eb423c5a11ceb"

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
