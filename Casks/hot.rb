cask "hot" do
  version "1.7.1"
  sha256 "feb92b473a17c5d8ec6a8aa385a0091b6b57efbe33caf73d32b31ba67280fb84"

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
