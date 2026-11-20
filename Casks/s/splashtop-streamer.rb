cask "splashtop-streamer" do
  version "3.8.6.3"
  sha256 "bde3c94222fd72ee35501b383af32e091c504606c53c07e7912d9cab0a3018f7"

  url "https://d17kmd0va0f0mp.cloudfront.net/mac/Splashtop_Streamer_Mac_INSTALLER_v#{version}.dmg"
  name "Splashtop Streamer"
  desc "Connect to and control computers from desktop and mobile devices"
  homepage "https://www.splashtop.com/downloads"

  livecheck do
    url "https://redirect.splashtop.com/srs/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  pkg "Splashtop Streamer.pkg"

  uninstall launchctl: [
              "com.splashtop.streamer",
              "com.splashtop.streamer-daemon",
              "com.splashtop.streamer-for-root",
              "com.splashtop.streamer-for-user",
              "com.splashtop.streamer-srioframebuffer",
            ],
            quit:      "com.splashtop.Splashtop-Streamer",
            pkgutil:   [
              "com.splashtop.soundDriver",
              "com.splashtop.Splashtop-Streamer",
            ],
            delete:    [
              "/Library/LaunchAgents/com.splashtop.streamer.plist",
              "~/Library/LaunchAgents/com.splashtop.streamer.plist",
            ]

  zap trash: [
    "~/Library/Application Support/Splashtop Streamer",
    "~/Library/Preferences/com.splashtop.Splashtop-Streamer.plist",
  ]
end
