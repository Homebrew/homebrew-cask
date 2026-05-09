cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.2"
  sha256 arm:   "5f0ca6f964d9c1d83b3b036c9c75408763cd6fe1b7dafb48e05cd7940a3bab3a",
         intel: "3bef301b6db5e1267840c5d2e88f90a54fd42a3568cac2fce80de3309179f05c"

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
