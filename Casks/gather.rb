cask "gather" do
  arch arm: "-arm64"

  version "0.3.8"
  sha256 arm:   "16a58158aa2916e1a1db0bf375cb4b49acb0c102616b1b002965994c8464815e",
         intel: "d540dcc8e57afb7b55a3e35994a95e5791fdf11752cd1fee4715e8523db217d3"

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
