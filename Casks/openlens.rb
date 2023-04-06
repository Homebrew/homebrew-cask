cask "openlens" do
  arch arm: "-arm64"

  version "6.4.15"
  sha256 arm:   "5a6ff4fe8ddcedda946666188a4bd1f92256ea6baa4d575f040c1a2b0c5bec9d",
         intel: "eb98954c090b153eccbf778fc7a03fdec1c403d472fc9cca61ab92dca15a9f88"

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
