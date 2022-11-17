cask "gather" do
  arch arm: "-arm64"

  version "0.3.21"
  sha256 arm:   "88f6f5b10e3ead715f8b7e8d8b1b6dd03efff2d28aae12498575eca26b1bc6e1",
         intel: "67d30b471c8422eee7b77344a7db9006612ebdcbb878fe36b8adc0c9d7a179fe"

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
