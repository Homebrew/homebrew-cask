cask "splashtop-business" do
  version "3.5.6.0"
  sha256 "be15643f9d30bd75a390ba8e8d1761a4d2c4c75d1a78720ba6f9dbf478930fb5"

  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/macclient/STB/"
  name "Splashtop Business"
  desc "Remote access software"
  homepage "https://www.splashtop.com/business"

  livecheck do
    url "https://redirect.splashtop.com/src/mac"
    strategy :header_match
  end

  pkg "Splashtop Business.pkg"

  uninstall quit:    "com.splashtop.stb.macosx",
            pkgutil: [
              "com.splashtop.stb.*",
              "com.splashtop.splashtopBusiness.*",
            ]
end
