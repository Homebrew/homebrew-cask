cask "opennx" do
  version "0.16.0.729"
  sha256 "65dde1a3504a17ac58ed2a7178536347d829ee8c27cc90bebdae3e98c36fc6c6"

  url "https://downloads.sourceforge.net/opennx/OpenNX-#{version}.dmg",
      verified: "sourceforge.net/opennx/"
  name "OpenNX"
  desc "Replacement for NoMachine's NX client"
  homepage "http://opennx.net/"

  depends_on cask: "xquartz"

  pkg "OpenNX.pkg"

  uninstall script:  {
    executable: "/Library/OpenNX/bin/macuninstall",
    args:       ["--batch"],
  },
            pkgutil: "org.opennx.OpenNX"
end
