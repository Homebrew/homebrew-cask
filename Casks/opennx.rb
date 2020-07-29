cask "opennx" do
  version "0.16.0.729"
  sha256 "65dde1a3504a17ac58ed2a7178536347d829ee8c27cc90bebdae3e98c36fc6c6"

  # sourceforge.net/opennx/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/opennx/OpenNX-#{version}.dmg"
  appcast "https://sourceforge.net/projects/opennx/rss"
  name "OpenNX"
  homepage "http://opennx.net/"

  pkg "OpenNX.pkg"

  uninstall script:  {
    executable: "/Library/OpenNX/bin/macuninstall",
    args:       ["--batch"],
  },
            pkgutil: "org.opennx.OpenNX"
end
