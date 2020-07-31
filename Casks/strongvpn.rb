cask "strongvpn" do
  version "2.2.2,45556"
  sha256 "a86e394249155fdca02f65ebad8bc269274b69aee6134b9b41e0abaff69030bc"

  # static.colomovers.com/ was verified as official when first introduced to the cask
  url "https://static.colomovers.com/mac/StrongVPN.dmg"
  appcast "https://static.colomovers.com/mac/updates.xml"
  name "StrongVPN"
  homepage "https://strongvpn.com/vpn-apps/macos/"

  app "StrongVPN.app"
end
