cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.17"
  sha256 arm:   "6146dc58a31cd381e3fe2a321e6ba2324d19b21a20c9b21c5c6164d85f879d50",
         intel: "91aa3931f8d139f228d1afb6200100018d1b0d52bc0eaf591f87eb5aa18ae442"

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
