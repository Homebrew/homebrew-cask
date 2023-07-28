cask "gather" do
  arch arm: "-arm64"

  version "0.10.3"
  sha256 arm:   "958cf2dbd1ec40c1db4436b5efac768a4ebc80793e8f3c4eee4bc0be73ce4b1d",
         intel: "7d4e2afd8f254b0b90d956af4602b9c15b2f4af1344624fc78ecf06a192d3777"

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
