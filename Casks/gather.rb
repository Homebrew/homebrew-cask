cask "gather" do
  arch arm: "-arm64"

  version "0.5.5"
  sha256 arm:   "6945e221f6f768bd79ffb5c6fcd6f73bf223803f64fee0c17e071d47b4a2555f",
         intel: "1e67cf6505c8a774c2ede3917723b5ef2785aac30af4ce4c816b141bf2656577"

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
