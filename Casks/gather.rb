cask "gather" do
  arch arm: "-arm64"

  version "0.5.15"
  sha256 arm:   "ab51d432adb0242821ed4480311edfdff01f20b96961782b801890a7dd662720",
         intel: "9b2f1969ee0adaebf0340fc75664bf995267bcd636beedc05fe6b02c406f4f4c"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases/"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
