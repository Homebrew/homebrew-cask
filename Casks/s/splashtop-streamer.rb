cask "splashtop-streamer" do
  version "3.7.4.2"
  sha256 "0700bfbf67d3b5a1a5f370ca93345650e2334605fe7c225aff4aa6a1d5adb4ea"

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

  uninstall launchctl: [
              "com.splashtop.streamer",
              "com.splashtop.streamer-daemon",
              "com.splashtop.streamer-for-root",
              "com.splashtop.streamer-for-user",
              "com.splashtop.streamer-srioframebuffer",
            ],
            quit:      "com.splashtop.Splashtop-Streamer",
            pkgutil:   "com.splashtop.Splashtop-Streamer"

  zap trash: [
    "~/Library/Application Support/Splashtop Streamer",
    "~/Library/Preferences/com.splashtop.Splashtop-Streamer.plist",
  ]
end
