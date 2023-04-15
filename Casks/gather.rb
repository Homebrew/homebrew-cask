cask "gather" do
  arch arm: "-arm64"

  version "0.6.3"
  sha256 arm:   "5748efe87fec33b144fed6cc0f492b927823c1df75814799d5d24d0c2f5b30cc",
         intel: "e86b31e0737f50601c09a7c73c384facc9a7ab128308528721b11e4d16c0e65d"

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
