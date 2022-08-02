cask "splashtop-business" do
  version "3.5.0.4"
  sha256 "5dcb1756d658dd85bb1b3ddf9241c02595f8920fbeccda1a3972ab123d563015"

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
