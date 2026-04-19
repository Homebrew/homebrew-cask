cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.120"
  sha256 arm:   "7e4aa95a54c9a27f882451d5030cd97a815485019a043bc5e92d06674fff1a58",
         intel: "f175629e089728cd8b81f13c4d08f9deb6b672bab3b5eb2420d53929dac12ae3"

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
