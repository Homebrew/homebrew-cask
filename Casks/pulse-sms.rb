cask "pulse-sms" do
  version "4.3.0"
  sha256 "c0932e82740398b35a90b52219062e07f9979cbf5ddfe2c77e6092008f834cd2"

  url "https://github.com/maplemedia/pulse-sms-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg",
      verified: "github.com/maplemedia/pulse-sms-desktop/"
  appcast "https://github.com/maplemedia/pulse-sms-desktop/releases.atom"
  name "Pulse SMS"
  desc "Desktop client for Pulse SMS"
  homepage "https://messenger.klinkerapps.com/overview/platform-mac.html"

  app "Pulse SMS.app"
end
