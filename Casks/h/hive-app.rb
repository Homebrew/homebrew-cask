cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.10"
  sha256 arm:   "4029eaeee6fca4f287dc7536134e0c930c0e66337e54e7ebf0650bc16eb050f4",
         intel: "9e62cc2081377a62f1672fa9f687625993c5b5e140d5252d4ee1648ba487a2fe"

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
