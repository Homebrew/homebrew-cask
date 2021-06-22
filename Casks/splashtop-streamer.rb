cask "splashtop-streamer" do
  version "3.4.6.0"
  sha256 "d6d07600e00711c703a6395324b6c48db2ab4c54e718fac430b0d2b23acbad38"

  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_INSTALLER_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/"
  name "Splashtop Streamer"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/downloads"

  livecheck do
    url "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac"
    regex(/v(\d+(?:\.\d+)+)\.dmg/i)
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
