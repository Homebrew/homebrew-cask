cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.112"
  sha256 arm:   "4760f8379a6a927fbba9eca3eb2719dbb0e84d17f35188bb131d98d740cf759f",
         intel: "54e96741fb382ffc58114f7f4ff33197fed4dd8f934a535a3bd182da5e84f29b"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
