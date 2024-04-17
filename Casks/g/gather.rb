cask "gather" do
  arch arm: "-arm64"

  version "1.4.1"
  sha256 arm:   "1a1a01e63f20809837f8f2ab3649f7595a52852d213d83b13f131f33466f97db",
         intel: "9d5b2dc996dc027e8d6db69b6f27b111458464ace2d3efddefd3275f3ca3dde9"

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
