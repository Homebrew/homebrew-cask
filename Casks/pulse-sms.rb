cask "pulse-sms" do
  version "4.5.2"
  sha256 "e7991dd97c92931b4a74aa804bf42a81e13bb00ec5b1dfad8fa49ccbba392b99"

  url "https://github.com/maplemedia/pulse-sms-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg",
      verified: "github.com/maplemedia/pulse-sms-desktop/"
  name "Pulse SMS"
  desc "Desktop client for Pulse SMS"
  homepage "https://messenger.klinkerapps.com/overview/platform-mac.html"

  app "Pulse SMS.app"

  zap trash: [
    "~/Library/Application Support/pulse-sms",
    "~/Library/Logs/pulse-sms",
  ]
end
