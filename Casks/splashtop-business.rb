cask "splashtop-business" do
  version "3.4.4.0"
  sha256 "f5e3ac5fe792bd9c3073a70e40cc62b9f4aa766a74cdf0efc71e20d777ce8a0c"

  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/macclient/STB/"
  name "Splashtop Business"
  desc "Remote access software"
  homepage "https://www.splashtop.com/business"

  livecheck do
    url "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client"
    strategy :page_match
    regex(/Splashtop_Business_Mac_INSTALLER_v(\d+(?:\.\d+)*)\.dmg/i)
  end

  pkg "Splashtop Business.pkg"

  uninstall quit:    "com.splashtop.stb.macosx",
            pkgutil: [
              "com.splashtop.stb.*",
              "com.splashtop.splashtopBusiness.*",
            ]
end
