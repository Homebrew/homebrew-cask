cask "gather" do
  arch arm: "-arm64"

  version "0.5.2"
  sha256 arm:   "e19e677f0f64605bfb639fa566262bce94d26cbd18401c293ab291c2081dc8b7",
         intel: "8c9360113eb2fc4058d3ebebc91fac4df687e20c48c78afaaf9896a34083bd21"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
