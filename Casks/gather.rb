cask "gather" do
  arch arm: "-arm64"

  version "0.11.0"
  sha256 arm:   "bd692382c752e9021b0f70f0ad0739f710a297610ce4f71525968150f53f7bbb",
         intel: "d1fb2476e320f7c41c69839f934767b72052db42da6e43c9722c2e4565e327db"

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
