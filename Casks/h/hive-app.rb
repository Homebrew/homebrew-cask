cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "1bd45749ea30d17c9330a9d6d9f9621acf778e11e2a3bd6e06e44c2153c73c3b",
         intel: "6092d72590c5a684b92aa386ead4b03d5bc022e1ec78252a2ed8daa5925ad84d"

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
