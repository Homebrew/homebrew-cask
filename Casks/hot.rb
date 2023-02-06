cask "hot" do
  version "1.8.0"
  sha256 "2e43e3c2e6e2d56e5e78db83a6e841a3c6ca0a026e6f20d0d821db506d6cd427"

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
