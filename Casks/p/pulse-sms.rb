cask "pulse-sms" do
  version "4.5.3"
  sha256 "9e12b4a0b794ee4903ee59c57b10c5951a357f739c90bda387a81a55b9bdd73f"

  url "https://github.com/maplemedia/pulse-sms-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg",
      verified: "github.com/maplemedia/pulse-sms-desktop/"
  name "Pulse SMS"
  desc "Desktop client for Pulse SMS"
  homepage "https://home.pulsesms.app/overview/"

  app "Pulse SMS.app"

  zap trash: [
    "~/Library/Application Support/pulse-sms",
    "~/Library/Logs/pulse-sms",
  ]

  caveats do
    requires_rosetta
  end
end
