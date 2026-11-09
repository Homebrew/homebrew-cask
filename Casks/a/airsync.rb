cask "airsync" do
  version "4.1.0"
  sha256 "07974efe54944f8c6c84e81fc571283297e8197059a774b2fccc33d3e63d68fc"

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
