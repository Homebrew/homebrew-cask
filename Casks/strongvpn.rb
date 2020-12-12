cask "strongvpn" do
  version "2.2.2,45556"
  sha256 :no_check

  url "https://static.colomovers.com/mac/StrongVPN.dmg",
      verified: "static.colomovers.com/"
  appcast "https://static.colomovers.com/mac/updates.xml"
  name "StrongVPN"
  homepage "https://strongvpn.com/vpn-apps/macos/"

  app "StrongVPN.app"
end
