cask "hot" do
  version "1.5.0"
  sha256 "e17e1a2c0be97825b75cbb3ff193d125fb45b28447aefeb8407f2f5a0d6b556e"

  url "https://github.com/macmade/Hot/releases/download/#{version}/Hot.app.zip"
  name "Hot"
  desc "Menu bar application that displays the CPU speed limit due to thermal issues"
  homepage "https://github.com/macmade/Hot"

  auto_updates true

  app "Hot.app"

  zap trash: [
    "~/Library/Caches/com.xs-labs.Hot",
    "~/Library/Preferences/com.xs-labs.Hot.plist",
  ]
end
