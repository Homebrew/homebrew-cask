cask "splashtop-streamer" do
  version "3.5.0.2"
  sha256 "13a2e6d60e384188dddbe700de231a777f46d8f89f8f1f1aee6d88f017774817"

  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_INSTALLER_v#{version}.dmg",
      verified: "d17kmd0va0f0mp.cloudfront.net/"
  name "Splashtop Streamer"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/downloads"

  livecheck do
    url "https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?platform=mac"
    regex(/v?(\d+(?:\.\d+)+)\.dmg/i)
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
