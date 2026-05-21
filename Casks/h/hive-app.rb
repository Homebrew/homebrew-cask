cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.8"
  sha256 arm:   "f9f513f0707fd5241530f9d1280da2f82d1978ac85aa24b65e7caf27a71e7b56",
         intel: "efe2ae348f93218a6e97742b309bde7da344b53b824b392bce9584a5c76a98c9"

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
