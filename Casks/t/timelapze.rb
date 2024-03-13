cask "timelapze" do
  version "1.0.0"
  sha256 "da770b4e6691b5eaf86ce93cef41d6345dbcf228e4c93abee8a62a93c294f74a"

  url "https://github.com/wkaisertexas/ScreenTimeLapse/releases/download/v#{version}/TimeLapze.zip"
  name "TimeLapze"
  desc "Record screen time lapses in a menu bar interface"
  homepage "https://github.com/wkaisertexas/ScreenTimeLapse"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "TimeLapze.app"

  uninstall quit: "com.smartservices.TimeLapze"

  zap trash: [
    "~/Library/Application Scripts/com.smartservices.TimeLapze",
    "~/Library/Containers/com.smartservices.TimeLapze",
    "~/Library/Preferences/com.smartservices.TimeLapze.plist",
  ]
end
