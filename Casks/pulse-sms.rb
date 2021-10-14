cask "pulse-sms" do
  version "4.5.0"
  sha256 "f721007f50ee1cf832c638ff8af5ba65aa9c172c2cadbbdc2587dab858c128f0"

  url "https://github.com/maplemedia/pulse-sms-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg",
      verified: "github.com/maplemedia/pulse-sms-desktop/"
  name "Pulse SMS"
  desc "Desktop client for Pulse SMS"
  homepage "https://messenger.klinkerapps.com/overview/platform-mac.html"

  app "Pulse SMS.app"
end
