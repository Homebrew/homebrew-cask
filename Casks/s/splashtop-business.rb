cask "splashtop-business" do
  version "3.6.2.0"
  sha256 "3365400dcbc70771d18a8376af9d6918aac3483b364d7678188280da46b9b892"

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
