cask "gather" do
  arch arm: "-arm64"

  version "0.6.4"
  sha256 arm:   "7d6ffd265a03ff9874719fae7204906670d3f4b7fcb3fed324b03e699b2d5a01",
         intel: "e3e76e878fbd29a408c3c98a4c847fd6d706e17432ad3d088364b196d7d0f163"

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
