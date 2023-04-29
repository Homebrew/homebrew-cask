cask "gather" do
  arch arm: "-arm64"

  version "0.6.7"
  sha256 arm:   "177a4252a7b43593565875d0f147d5acdc4ddef4b9bbc5228603a2bbdc0f3403",
         intel: "8a033a9add8bee01ad50ef7550e9adef1ef26a8a0009aa94573ec222ae8d1a98"

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
