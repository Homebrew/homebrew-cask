cask "gather" do
  arch arm: "-arm64"

  version "1.6.2"
  sha256 arm:   "20496b748ca29b03f5007ff4e83dc446932df0c257c658a7ace140c2765f7615",
         intel: "a23394c7a84017791f20e7bd1297f76ed7ec5fe1b9e816d09a0b3ee3f14ec0bf"

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
