cask "splashtop-business" do
  version "3.4.6.0"
  sha256 "b0bb3e8d8fb62c7f2f23e16442c48a16acd7676aa8a129cb1c3e03b3240468e7"

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
