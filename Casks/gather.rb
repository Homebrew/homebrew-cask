cask "gather" do
  arch arm: "-arm64"

  version "0.7.7"
  sha256 arm:   "72ed1832e0f1950934b032f6f31633e26cb78318a197a6516530dd8a15d1fb87",
         intel: "f8b25ddcb4cd9af256cad68201fe36c41efeefcb106849419277aaac5977f266"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases/"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
