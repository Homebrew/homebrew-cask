cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.16"
  sha256 arm:   "d18070a3aaa8149a3a4fd493037366ee3c03c9fac8f214d619ca4fc8a3e502fa",
         intel: "afbc26de38f1d069254ec44785a67e9fd14d6bc5020c2cc2f632574f803e017f"

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
