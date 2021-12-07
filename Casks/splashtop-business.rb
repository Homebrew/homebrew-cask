cask "splashtop-business" do
  version "3.4.8.4"
  sha256 "fa0663d087bfa9d01cb6f3369c40667c77bd72e9ae684d35b48cbbe7b4f3dc5d"

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
