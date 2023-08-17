cask "splashtop-streamer" do
  version "3.6.0.0"
  sha256 "489157f49abd0f5c250ecc0682931aa5437154467983ec93967dae89727b1e48"

  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_INSTALLER_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/"
  name "Splashtop Streamer"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/downloads"

  livecheck do
    url "https://redirect.splashtop.com/srs/mac"
    strategy :header_match
  end

  auto_updates true

  pkg "Splashtop Streamer.pkg"

  uninstall quit:      "com.splashtop.Splashtop-Streamer",
            launchctl: [
              "com.splashtop.streamer-daemon",
              "com.splashtop.streamer-for-root",
              "com.splashtop.streamer-for-user",
              "com.splashtop.streamer-srioframebuffer",
            ],
            pkgutil:   "com.splashtop.Splashtop-Streamer"

  zap trash: [
    "Library/Application Support/Splashtop Streamer",
    "Library/Preferences/com.splashtop.Splashtop-Streamer.plist",
  ]
end
