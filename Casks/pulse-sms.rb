cask "pulse-sms" do
  version "4.3.0"
  sha256 "c0932e82740398b35a90b52219062e07f9979cbf5ddfe2c77e6092008f834cd2"

  # github.com/klinker-apps/messenger-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/klinker-apps/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast "https://github.com/klinker-apps/messenger-desktop/releases.atom"
  name "Pulse SMS"
  homepage "https://messenger.klinkerapps.com/"

  app "Pulse SMS.app"
end
