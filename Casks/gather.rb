cask "gather" do
  arch arm: "-arm64"

  version "0.5.0"
  sha256 arm:   "845512fe4e04a191a932a277c2469516a3bd794fb042a885d56f75fbc58902a8",
         intel: "af3fa99458120b0e91fdd740f3bfd91c1deb509fcf6290390a267c8d758844dc"

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
