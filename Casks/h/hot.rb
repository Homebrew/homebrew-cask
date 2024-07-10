cask "hot" do
  version "1.9.4"
  sha256 "e4f6ccf7606673ee611870bfb1d4cc8be86a508058db8f9bb5cf41e997ed61ca"

  url "https://github.com/macmade/Hot/releases/download/#{version}/Hot.zip"
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
