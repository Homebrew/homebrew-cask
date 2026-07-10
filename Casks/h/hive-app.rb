cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.14"
  sha256 arm:   "9a382dd99283ae7055c0334013a2676eccd7c8cef3673aa233ef5e6d481da317",
         intel: "8515563ef37e43aed27e1a8d81dd7f84c61293751b7b7cd683f9c268601323cd"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: :monterey

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
