cask "gather" do
  arch arm: "-arm64"

  version "0.5.7"
  sha256 arm:   "0d686a2ede7a36262b8c666b3065d759ddaaa199aed537b07ac7f4ac989add08",
         intel: "0f75c885595dcf78b865085f6fd0c7b56590ccd77db97b1b854b37ff82cac754"

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
