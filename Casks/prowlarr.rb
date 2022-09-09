cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.5.1960"
  sha256 arm:   "1a60a903f15920d3b96b67c5c9af83eb1d1b0bfbee0325b74fb6315b2a35aa4f",
         intel: "6adaeccc2f7e0ecf25c8b462e156e8e1a4dda79932361ccd48b0e6ad048bb011"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
