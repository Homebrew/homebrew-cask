cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.17"
  sha256 arm:   "faf89f0b6eb024a60f84c51af6ec8ca1689b3f7541be7ad86ab8dd6a83ac1cc0",
         intel: "34996737010a78ddb4741ad978de97a0851ff3fa363c44bab3a2bf5304eb456e"

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
