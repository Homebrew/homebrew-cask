cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.13"
  sha256 arm:   "973fc8f8a6b752b4297f0c4eaefd80f42b829c62e4dc11c55ef5c0d18a11d0f1",
         intel: "b568893d786c7ed6c57f6ecbe96d80918b71310b3e1e98499df75ae4f201a4f7"

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
