cask "timelapze" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/wkaisertexas/ScreenTimeLapse/releases/download/v#{version}/TimeLapze.zip"
  name "TimeLapze"
  desc "Record screen time lapses with ease in a simple, intuitive interface"
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
