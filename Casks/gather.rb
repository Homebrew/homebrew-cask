cask "gather" do
  arch arm: "-arm64"

  version "0.12.0"
  sha256 arm:   "6fd0ec08986e73819bb355bab43f5dcb0d3b6fc02426daa35031c3082c2b616b",
         intel: "defbed6d2a77392699ae80c1f2fdd64c0b5e12746067559af4757f39f1795b34"

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
