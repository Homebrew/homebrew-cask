cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.119"
  sha256 arm:   "5110526a9eac8dc7951cf4398be35d3f9dc4a689fc2426e1a0183dc212d74d56",
         intel: "f99cd43580225343ffd3835f21746cb25936e1695b7ce770cc62c91c70067bc9"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
