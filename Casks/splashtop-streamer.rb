cask "splashtop-streamer" do
  version "3.4.2.0"
  sha256 "7dbd3c0246b6835bd929b17b5f1c2d3c5738feb30a861502930d2d10792ce781"

  # d17kmd0va0f0mp.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_INSTALLER_v#{version}.dmg"
  appcast "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac"
  name "Splashtop Streamer"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/downloads"

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
