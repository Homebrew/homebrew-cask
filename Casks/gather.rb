cask "gather" do
  arch arm: "-arm64"

  version "0.5.8"
  sha256 arm:   "de0dad20e6b79f62bd35998d8eb19092c8fd03ab0100fe99e4fd48749b741499",
         intel: "76737d3e8ef103464da0ad3c92c24679ab0c19c83521c532702ad702281fa1ec"

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
