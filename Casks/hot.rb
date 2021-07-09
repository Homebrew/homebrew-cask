cask "hot" do
  version "1.3.0"
  sha256 "af8fa54920f5dec0f95cb04cca55d203d7b7f2ec99259b211a51261b3e173d93"

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
