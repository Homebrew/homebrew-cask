cask "gather" do
  arch arm: "-arm64"

  version "0.7.6"
  sha256 arm:   "3986e71875def6b25bf97b5431b35df6292419c18a8fbf1d8fae778834bc2b44",
         intel: "bf50dcef0d5887af7dc6da2495d0714b1ff3a3b003173010061e6e8bbed58a3a"

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
