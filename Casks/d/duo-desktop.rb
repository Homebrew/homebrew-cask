cask "duo-desktop" do
  version "7.20.0.0"
  sha256 "47b29b0080bcab38a513e334f94d6930b21a9b69c273a2b32c63af341727095d"

  url "https://dl.duosecurity.com/DuoDesktop-#{version}.pkg"
  name "Duo Desktop"
  desc "Endpoint health checks for Duo-protected applications"
  homepage "https://duo.com/docs/duo-desktop"

  livecheck do
    url "https://duo.com/docs/checksums"
    regex(/DuoDesktop[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on :macos

  pkg "DuoDesktop-#{version}.pkg"

  uninstall launchctl: [
              "com.duosecurity.duoappupdater",
              "com.duosecurity.DuoDesktopService",
              "com.duosecurity.ForceLaunchDuoDesktop",
              "com.duosecurity.LaunchDuoDesktop",
              "com.duosecurity.trustedpeermessagebroker",
            ],
            quit:      "com.duosecurity.duo-device-health",
            pkgutil:   "com.duosecurity.duo-device-health",
            delete:    [
              "/Applications/Duo Desktop.app",
              "/Library/LaunchAgents/com.duosecurity.ForceLaunchDuoDesktop.plist",
              "/Library/LaunchAgents/com.duosecurity.LaunchDuoDesktop.plist",
              "/Library/LaunchDaemons/com.duosecurity.duoappupdater.plist",
              "/Library/LaunchDaemons/com.duosecurity.DuoDesktopService.plist",
              "/Library/LaunchDaemons/com.duosecurity.trustedpeermessagebroker.plist",
            ]

  zap trash: [
    "/Library/Logs/Duo",
    "~/Library/Caches/com.duosecurity.duo-device-health",
    "~/Library/Logs/Duo Desktop",
    "~/Library/Preferences/com.duosecurity.devicehealth.localdata.plist",
    "~/Library/Preferences/com.duosecurity.duo-device-health.plist",
  ]
end
