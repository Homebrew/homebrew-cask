cask "gather" do
  arch arm: "-arm64"

  version "1.20.0"
  sha256 arm:   "3deb6e570cb5cb1aecadfdd5568d08f63f27b4995801014a72ba957fe398446b",
         intel: "ab19e89de40e18fcb9406e20444ff3af7f558a3f74c6237689746374e88ca535"

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
