cask "ipsecuritas" do
  version "5.0.1"
  sha256 "b58bc8f3583a34287a3b1987dec37b89fc30eabce54523aaa37f8b21e6390190"

  url "https://www.lobotomo.com/download/ipsecuritas-#{version}.dmg"
  name "IPSecuritas"
  desc "IPSec client"
  homepage "https://www.lobotomo.com/products/IPSecuritas/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ipSecuritas[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "IPSecuritas.app"

  zap trash: [
    "/Library/LaunchDaemons/com.lobotomo.IPSecuritasDaemon.plist",
    "/Library/PrivilegedHelperTools/com.lobotomo.IPSecuritasDaemon",
    "~/Library/Preferences/com.lobotomo.IPSecuritas.plist",
  ]
end
