cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.20"
  sha256 arm:   "e0023d701ba2fc8f195dcee11624e0e46fed86888f8c1ed73fffb4d53d9b96e7",
         intel: "44a6ee2243789dccf1fe0896e52c7dffe64e169bd383ba6d585aedf82a1fd82d"

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
