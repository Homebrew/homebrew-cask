cask "splashtop-business" do
  version "3.7.2.3"
  sha256 "6237d515b3ec1b298927067482c060c9baee4666553d1d9483990a68b97e0d70"

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

  uninstall launchctl: "com.splashtop.stb.macosx.helper.autoupdate",
            quit:      "com.splashtop.stb.macosx",
            pkgutil:   [
              "com.splashtop.splashtopBusiness.*",
              "com.splashtop.stb.*",
            ]

  zap trash: [
    "~/Library/Application Support/Splashtop Business",
    "~/Library/Caches/com.splashtop.stb.macosx",
    "~/Library/HTTPStorages/com.splashtop.stb.macosx",
    "~/Library/Preferences/com.splashtop.stb.macosx.plist",
  ]
end
