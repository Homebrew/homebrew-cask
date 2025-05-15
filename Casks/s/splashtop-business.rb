cask "splashtop-business" do
  version "3.7.4.2"
  sha256 "a5fa15626ca78d4cf3749f6dbfca58654cadb731e3c212460cca555d4d2974b4"

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
