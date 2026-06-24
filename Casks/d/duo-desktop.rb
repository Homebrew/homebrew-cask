cask "duo-desktop" do
  version "7.19.0.0"
  sha256 "486af3c6bb354cc0d630429cc011da382433309adcc74ed8f4ee6a867f7210c1"

  url "https://dl.duosecurity.com/DuoDesktop-#{version}.pkg",
      verified: "dl.duosecurity.com/"
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
