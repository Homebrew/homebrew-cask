cask "powerpanel" do
  version "2.7.2"
  sha256 "87ca61bd45f8961f63e27b2953658fc503d652588b85f793e7f7a93a37cc685a"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/PPP_Mac_v#{version}.pkg"
  name "CyberPower PowerPanel Personal"
  desc "Manage and control UPS systems"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  livecheck do
    url "https://www.cyberpowersystems.com/product/software/power-panel-personal/powerpanel-personal-mac/",
        user_agent: :browser
    regex(/href=.*?PPP[._-]Mac[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on :macos

  pkg "PPP_Mac_v#{version}.pkg"

  uninstall launchctl: [
              "com.cpsww.ppupsd",
              "com.cyberpower.powerpanel-personal.client",
              "com.cyberpower.powerpanel-personal.daemon",
            ],
            quit:      "com.cyberpower.powerpanel-personal.client",
            pkgutil:   [
              "com.cpsww.ppupsd",
              "com.cyberpower.powerpanelpersonal.ppp",
            ],
            delete:    "/Applications/PowerPanel Personal.app"

  zap delete: [
        "/Library/LaunchAgents/com.cyberpower.powerpanel-personal.client.plist",
        "/Library/LaunchDaemons/com.cyberpower.powerpanel-personal.daemon.plist",
      ],
      trash:  [
        "~/Library/Preferences/PowerPanel Personal.plist",
        "~/Library/Saved Application State/PowerPanel Personal.savedState",
      ]
end
