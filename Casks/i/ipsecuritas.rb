cask "ipsecuritas" do
  on_sierra :or_older do
    version "4.7"
    sha256 "42e85f68aa6a321fdaea7a352f5d85d7a987bb7e2a8067360d23633a9df3baba"

    url "https://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  end
  on_high_sierra do
    version "4.9.1"
    sha256 "4e23830ab3a8b15f25bfe602c6f1b29c9766ae680afcaf0831047216b05836df"

    url "https://www.lobotomo.com/products/downloads/IPSecuritas%20#{version}.dmg"
  end
  on_mojave :or_newer do
    version "5.0.1"
    sha256 "b58bc8f3583a34287a3b1987dec37b89fc30eabce54523aaa37f8b21e6390190"

    url "https://www.lobotomo.com/download/ipsecuritas-#{version}.dmg"
  end

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
