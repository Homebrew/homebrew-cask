cask "splashtop-personal" do
  version "3.6.6.0"
  sha256 "19f44161ccac91f86cbb88a18b44ccd1a18d92d6cbe82219b8e7edd3fff9e098"

  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_Mac_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/"
  name "Splashtop Personal"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/personal"

  livecheck do
    url "https://redirect.splashtop.com/stp-src/mac"
    strategy :header_match
  end

  pkg "Splashtop Personal.pkg"

  uninstall launchctl: "com.splashtop.stp.macosx.helper.autoupdate",
            quit:      "com.splashtop.stp.macosx",
            pkgutil:   "com.splashtop.stp.*"

  zap trash: [
    "~/Library/Application Support/Splashtop Personal",
    "~/Library/Caches/com.splashtop.stp.macosx",
    "~/Library/HTTPStorages/com.splashtop.stp.macosx",
    "~/Library/Preferences/com.splashtop.stp.macosx.plist",
  ]
end
