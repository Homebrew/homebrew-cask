cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.2"
  sha256 arm:   "19b1613ead64366b7a708ac6bad6709c0a554790d5b9597f1cebe861793f2194",
         intel: "66763ec8c7191697f29cd6ec7e9a40aee63dad432c7a6c755b3d070245b1c902"

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
