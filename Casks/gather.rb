cask "gather" do
  arch arm: "-arm64"

  version "0.5.3"
  sha256 arm:   "05b1aa9b15d37e0e7787fa8490b50765a1f823340fc034a1c358dd3751d86165",
         intel: "abe1d24dc6d92b9b63d0554fffacdbd11bb90caf56780180bea4099a25838d5f"

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
