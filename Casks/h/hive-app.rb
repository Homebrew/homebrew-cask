cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.18"
  sha256 arm:   "5bc89ebcab28c210e5a28cbe6d5b25753f34b6a0724216abd7b4d00ce2876eac",
         intel: "62ba43d526fdaaa0e346e290a41ec05545612efb17e5cfb05ccf670c1ef88576"

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
