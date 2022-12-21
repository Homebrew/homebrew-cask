cask "gather" do
  arch arm: "-arm64"

  version "0.5.1"
  sha256 arm:   "069faaa19e97b84813b4f07bb434967c0cc328d0b1bb40cd46fdb96486ca6fd7",
         intel: "a4dacf974119cb16074208ad8d2e35ceea9f5b6d54ceef1e76a86514125af8c3"

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
