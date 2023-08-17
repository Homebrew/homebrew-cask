cask "splashtop-business" do
  version "3.6.0.0"
  sha256 "8ae25036968b0b68f04b2aac1173a5401a884ab2137fca636443740f402eb180"

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

  zap trash: [
    "~/Library/Application Support/Splashtop Business",
    "~/Library/Caches/com.splashtop.stb.macosx",
    "~/Library/HTTPStorages/com.splashtop.stb.macosx",
    "~/Library/Preferences/com.splashtop.stb.macosx.plist",
  ]
end
