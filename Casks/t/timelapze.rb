cask "timelapze" do
  version "1.2.0"
  sha256 "e25d7ed27941d06001bf0b06443bf8163c675113371edac8044a38925c229ad8"

  url "https://github.com/wkaisertexas/ScreenTimeLapse/releases/download/v#{version}/TimeLapze.zip"
  name "TimeLapze"
  desc "Record screen and camera time lapses in a menu bar interface"
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
