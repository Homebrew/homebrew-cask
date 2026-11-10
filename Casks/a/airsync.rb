cask "airsync" do
  version "4.2.0"
  sha256 "2cd6d587ce39a590b571c1baa2ee2dec28578d637666306011571521b5171da2"

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
