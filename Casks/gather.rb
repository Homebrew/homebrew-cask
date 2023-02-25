cask "gather" do
  arch arm: "-arm64"

  version "0.5.10"
  sha256 arm:   "976ffac65605ae0958402dd0583ffcec91053c4abc815c933d0b7d633ad3776d",
         intel: "ebc837f625e931b37a528bfe152f3ef092b1955eb686bf5bf19262c5ff783498"

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
