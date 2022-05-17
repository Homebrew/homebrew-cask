cask "splashtop-business" do
  version "3.5.0.2"
  sha256 "f6f8de7389e43e0e5e497231667729dd5aa5c02483db38a82f3647707a347274"

  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/macclient/STB/"
  name "Splashtop Business"
  desc "Remote access software"
  homepage "https://www.splashtop.com/business"

  livecheck do
    url "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client"
    regex(/Splashtop_Business_Mac_INSTALLER[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "Splashtop Business.pkg"

  uninstall quit:    "com.splashtop.stb.macosx",
            pkgutil: [
              "com.splashtop.stb.*",
              "com.splashtop.splashtopBusiness.*",
            ]
end
