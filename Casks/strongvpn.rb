cask "strongvpn" do
  version "2.2.2,45556"
  sha256 :no_check

  url "https://static.colomovers.com/mac/StrongVPN.dmg",
      verified: "static.colomovers.com/"
  name "StrongVPN"
  homepage "https://strongvpn.com/vpn-apps/macos/"

  livecheck do
    url "https://static.colomovers.com/mac/updates.xml"
    strategy :sparkle
  end

  app "StrongVPN.app"
end
