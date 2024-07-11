cask "gameranger" do
  version "1.0"
  sha256 :no_check

  url "https://gameranger.com/download/GameRanger.dmg"
  name "GameRanger"
  homepage "https://gameranger.com/"

  disable! date: "2024-07-05", because: "is 32-bit only"

  app "GameRanger.app"

  zap trash: [
    "~/Library/Caches/com.gameranger.GameRanger",
    "~/Library/Preferences/com.gameranger.GameRanger.plist",
    "~/Library/Preferences/GameRanger Prefs",
    "~/Library/Saved Application State/com.gameranger.GameRanger.savedState",
  ]
end
