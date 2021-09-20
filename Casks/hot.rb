cask "hot" do
  version "1.4.1"
  sha256 "a21b9c3872d1a7eb4069fc7fccbffae4cc084d3d966cab44cf166844f86a60ee"

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
