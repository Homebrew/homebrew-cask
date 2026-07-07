cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.10"
  sha256 arm:   "088841a79e3d2e312bf6a2ea76a045dd6dbec5d68dad772e9e65939b8c916db1",
         intel: "cfd2c9d93a7e5c77e65201d6c4ddaf1d6ffdd00298575d3a339645342428e937"

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
