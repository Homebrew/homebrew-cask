cask "splashtop-streamer" do
  version "3.8.6.0"
  sha256 "33765596a0e9f992ee22678c39e8d27888e8749d75046331e81e179a1d97e16d"

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
