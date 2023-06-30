cask "gather" do
  arch arm: "-arm64"

  version "0.8.15"
  sha256 arm:   "3617c03e73c882fc0b1b3b63c4407be9989bd0f2f418058657fb67981ca8e2d2",
         intel: "9d1ebf9c683da2a6acac6582654713ab8fff6d91651633e765cbeb9eac21e49a"

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
