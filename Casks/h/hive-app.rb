cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.5"
  sha256 arm:   "aefdcbbcbf98999f9a8571674f77796cd53b18d8e8fd5a1c273c72c1ed9d47cc",
         intel: "a4f404570e03a38daec3bd3a821fb6cf55388876ab7aac780bd935608932287d"

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
