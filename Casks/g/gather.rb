cask "gather" do
  arch arm: "-arm64"

  version "0.15.1"
  sha256 arm:   "163cbb19afd690e8dde4f7521633d6503a829f8494d965a406f5a41785645cd4",
         intel: "e47615f0dca23098531a6455563dd8f1399251360585c13efffd9fc1111a972e"

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
