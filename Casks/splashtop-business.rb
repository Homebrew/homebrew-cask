cask "splashtop-business" do
  version "3.4.2.0"
  sha256 "3e4cbbb9d292eb2843bac09dc53ec7379b1f9b8d86f8f93a273c0c6cab0cc13a"

  # d17kmd0va0f0mp.cloudfront.net/macclient/STB/ was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg"
  appcast "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client"
  name "Splashtop Business"
  desc "Remote access software"
  homepage "https://www.splashtop.com/business"

  pkg "Splashtop Business.pkg"

  uninstall quit:    "com.splashtop.stb.macosx",
            pkgutil: [
              "com.splashtop.stb.*",
              "com.splashtop.splashtopBusiness.*",
            ]
end
