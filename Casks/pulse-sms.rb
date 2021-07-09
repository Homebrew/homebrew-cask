cask "pulse-sms" do
  version "4.4.0"
  sha256 "7d3df686e4e005acccd1d263417d7e206ae78c4af4c8416c02d3919797b9edf0"

  url "https://github.com/maplemedia/pulse-sms-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg",
      verified: "github.com/maplemedia/pulse-sms-desktop/"
  name "Pulse SMS"
  desc "Desktop client for Pulse SMS"
  homepage "https://messenger.klinkerapps.com/overview/platform-mac.html"

  app "Pulse SMS.app"
end
