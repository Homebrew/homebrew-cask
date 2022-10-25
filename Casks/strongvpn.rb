cask "strongvpn" do
  version "2.3.1,84977"
  sha256 :no_check

  url "https://static.colomovers.com/mac/StrongVPN.dmg",
      verified: "static.colomovers.com/"
  name "StrongVPN"
  desc "VPN app with support for multiple protocols"
  homepage "https://strongvpn.com/vpn-apps/macos/"

  livecheck do
    url "https://static.colomovers.com/mac/updates.xml"
    strategy :sparkle
  end

  app "StrongVPN.app"
end
