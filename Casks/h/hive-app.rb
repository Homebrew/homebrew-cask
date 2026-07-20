cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.19"
  sha256 arm:   "3990dc3c56c60a32a5693f3ad9b507ef56798b2bf5dec59b26d87d39eb061a1f",
         intel: "764f26d2628a2881052b2d39899040254f90b916023965fb4c76c9f1d1b3d427"

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
