cask "strongvpn" do
  version "2.2.2,45556"
  sha256 :no_check

  # static.colomovers.com/ was verified as official when first introduced to the cask
  url "https://static.colomovers.com/mac/StrongVPN.dmg"
  appcast "https://static.colomovers.com/mac/updates.xml"
  name "StrongVPN"
  homepage "https://strongvpn.com/vpn-apps/macos/"

  app "StrongVPN.app"
end
