cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.4"
  sha256 arm:   "ccce046f35f0fda76b6a12709ffa0c8e2a50eb3654e986e5ac1271b461c3208d",
         intel: "c063701713b1030f04b72a4f2619735798e4eb6e0a6bc5b601a35a3f8d5c383b"

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
