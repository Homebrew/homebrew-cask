cask "pulse-sms" do
  version "4.4.1"
  sha256 "acf260dcaa9507e2840e655aa51cddfaa6cc419d197af796b1dba0dd89147cf8"

  url "https://github.com/maplemedia/pulse-sms-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg",
      verified: "github.com/maplemedia/pulse-sms-desktop/"
  name "Pulse SMS"
  desc "Desktop client for Pulse SMS"
  homepage "https://messenger.klinkerapps.com/overview/platform-mac.html"

  app "Pulse SMS.app"
end
