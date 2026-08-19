cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.35"
  sha256 arm:   "fbbf398d648f41f2212b0a70a4f0ba187e63bdf3842e6ff715b4ed827b6febf8",
         intel: "b9548e88b7420e8023c64813cb330f01667383f07d98c0b742aec940e965ebfe"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: :monterey

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hive.app.sfl*",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
