cask "pulse-sms" do
  version "4.1.0"
  sha256 "6946f26b4b3efa866250a28a83fc39bfc90662f8b30c357204c950675eba5385"

  # github.com/klinker-apps/messenger-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/klinker-apps/messenger-desktop/releases/download/v#{version}/pulse-sms-#{version}.dmg"
  appcast "https://github.com/klinker-apps/messenger-desktop/releases.atom"
  name "Pulse SMS"
  homepage "https://messenger.klinkerapps.com/"

  app "Pulse SMS.app"
end
