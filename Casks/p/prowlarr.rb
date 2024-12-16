cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.28.2.4885"
  sha256 arm:   "6164a2efe1ad1832adaeffa3d14cfaf11a6b234b0dc41695bb0c13f76352e1b1",
         intel: "085281145d833abc96011bf377fa076e18aca1567ad2a273750412846ff6368e"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
