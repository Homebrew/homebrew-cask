cask "splashtop-streamer" do
  version "3.5.2.2"
  sha256 "d3616c74dc68981548ef2bf91d0f716a39d13f08fdb8c07e29c303b91237107a"

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
end
