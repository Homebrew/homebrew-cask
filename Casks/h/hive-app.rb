cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.99"
  sha256 arm:   "922260c63b55f5cb807d3ee0592486901e62b20083204dad7b75be4888bb3662",
         intel: "b2cc244752008e077ff862d18ba02dc30c39d14146d27a11de3157e778b85c4b"

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
