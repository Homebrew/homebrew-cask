cask "gather" do
  arch arm: "-arm64"

  version "0.3.17"
  sha256 arm:   "18a32b014ea92afe81098ed8beb0bac26cf5f05e9bb00f18c4810c5baf15edd7",
         intel: "70f3ce1af659934684b672e745a73298c9c75a5c96746e102462f8da61cdedcd"

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
