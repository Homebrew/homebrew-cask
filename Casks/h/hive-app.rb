cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.28"
  sha256 arm:   "3da4172711c47e847d8fccbaa4a84d1460912148eedeaa37b0ccd01dbada4d67",
         intel: "a43d0e93d79547d2fe3f15877818e137b518ebfbc8b0843382837e7a5e75ca63"

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
