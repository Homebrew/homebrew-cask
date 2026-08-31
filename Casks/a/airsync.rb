cask "airsync" do
  version "4.0.1"
  sha256 "00df559b02b1ec3103abcc317fb49a4423478c41121c5dbb52244d58bbd9e9fd"

  url "https://github.com/sameerasw/airsync-mac/releases/download/v#{version}/AirSync.dmg"
  name "AirSync"
  desc "Continuity tools for use with Android devices"
  homepage "https://github.com/sameerasw/airsync-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AirSync.app"

  uninstall quit: "sameerasw.airsync-mac"

  zap trash: [
    "~/Library/Application Support/airsync-mac",
    "~/Library/Caches/sameerasw.airsync-mac",
    "~/Library/Preferences/sameerasw.airsync-mac.plist",
    "~/Library/Saved Application State/sameerasw.airsync-mac.savedState",
  ]
end
