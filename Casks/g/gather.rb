cask "gather" do
  arch arm: "-arm64"

  version "1.39.2"
  sha256 arm:   "292a6f5d7f20a865218055fd3de75f2facc4ce07ca8a35854e348ec069b7cd2f",
         intel: "07995aa1b63b160cf60a473c504664becc13b8bca16a7276c089e8520cef931a"

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
  depends_on macos: :big_sur

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
