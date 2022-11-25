cask "gather" do
  arch arm: "-arm64"

  version "0.3.23"
  sha256 arm:   "742d153dbc610190aa36a015b9a05980e93887a71a96d40450ef2db39167febd",
         intel: "99020005006078a90c59c585e1c3b0e36a40d2da3b5fb7870f71de5e9dd297a9"

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
