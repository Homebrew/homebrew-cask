cask "gather" do
  arch arm: "-arm64"

  version "0.13.2"
  sha256 arm:   "b60c29c6ca62f1e3c0d5204f6dfc6594180f8a8582a0b149ba7da213a349aae3",
         intel: "b0a543453e2063b3825518e39225d5f768df9346ba1fb17f6d3fb87de1a7ceb1"

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
