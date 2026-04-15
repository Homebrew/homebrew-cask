cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.109"
  sha256 arm:   "ee2842e386bc1b9a10d33672fe79c38b3da5d9b759b0b97c01fa435bc7a0727f",
         intel: "86c347e3f9e96fc9d7a2f445cb6351433176c01e8a676ebbf30f88345e762cf6"

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
