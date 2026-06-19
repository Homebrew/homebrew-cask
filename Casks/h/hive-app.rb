cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.3"
  sha256 arm:   "3e5912e6e8adbcc44ade2a3d0f9271d8ce6f7dba87887e7c56a6955db9db2655",
         intel: "79031fdca22617ed886d10f995ae5186691a6f3315908e25a0fb79394e63da39"

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
