cask "gather" do
  arch arm: "-arm64"

  version "0.12.3"
  sha256 arm:   "794773396f3d6fa4a4646650e7f8a78a40f2de73a5890cf469dccda1f267898a",
         intel: "f60f50093a9259591c1482e6641c86545d27616b8907ecf5cd12d783949c7592"

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
