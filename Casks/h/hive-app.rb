cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.108"
  sha256 arm:   "aadb8613017441a870f3d5ec7371826f140b3b9fc69b465ab52214f28ee630f2",
         intel: "7f7e5e940e6ac7c4b172108ede87ee21eb315ba69212631694e6ec76fe413a36"

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
