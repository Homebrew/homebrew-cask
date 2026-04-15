cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.111"
  sha256 arm:   "ce8f9e7f643fdc3effe471b5e499e6227dfead08da9cb3bf7c674ce157618c84",
         intel: "c8450265a9c3e993f9b8f4b6c98e993e416cf7b4c9dcf9e23c5a57b19ace1e41"

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
