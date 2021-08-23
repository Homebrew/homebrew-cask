cask "beardie" do
  version "3.0.17.76"
  sha256 "679b60eb3c5932667171534a74859c95423879f70e04b26b2cec3cd0bd3fc426"

  url "https://github.com/Stillness-2/beardie/releases/download/v#{version}.Release/Beardie.app.zip"
  name "Beardie"
  desc "Utility to control desktop and web media players with your keyboard"
  homepage "https://github.com/Stillness-2/beardie"

  auto_updates true

  app "Beardie.app"

  zap trash: [
    "~/Library/Caches/com.calm-apps.mac.beardie",
    "~/Library/Preferences/com.calm-apps.mac.beardie.plist",
  ]
end
