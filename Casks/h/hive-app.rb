cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.21"
  sha256 arm:   "05779fb0701244c5a9c43dcf3a89315dc7f9ac33a5bc69eadaa68fe5e4fcf958",
         intel: "bd1b715cf1b65b266ce2bedbd5ca297a9ce50e4fc3eb51f32e53089f5d6fb6b0"

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
