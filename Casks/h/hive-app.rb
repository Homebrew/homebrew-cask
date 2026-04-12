cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.106"
  sha256 arm:   "e93d5faadc3bbce6af5e5f9129db03e57c64857180e674d3bb2f9d219facdb0f",
         intel: "9014f966e886c04ea7e69bd9321a8e1aa9e41088942ed495eafba78f2f8830d3"

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
