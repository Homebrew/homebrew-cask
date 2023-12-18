cask "powerpanel" do
  version "2.5.1"
  sha256 "947d222bcf866b7b218673c7624331370d7392e4f5e7f46dbdb31c59868d307e"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/PPP_Mac_v#{version}.pkg",
      verified: "dl4jz3rbrsfum.cloudfront.net/"
  name "CyberPower PowerPanel Personal"
  desc "Manage and control UPS systems"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  livecheck do
    url "https://www.cyberpowersystems.com/product/software/power-panel-personal/powerpanel-personal-mac/"
    regex(/href=.*?PPP[._-]Mac[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :mojave"

  pkg "PPP_Mac_v#{version}.pkg"

  uninstall pkgutil:   [
              "com.cpsww.ppupsd",
              "com.cyberpower.powerpanelpersonal.ppp",
            ],
            launchctl: [
              "com.cpsww.ppupsd",
              "com.cyberpower.powerpanel-personal.client",
              "com.cyberpower.powerpanel-personal.daemon",
            ],
            delete:    "/Applications/PowerPanel Personal.app"

  zap trash:  [
        "~/Library/Preferences/PowerPanel Personal.plist",
        "~/Library/Saved Application State/PowerPanel Personal.savedState",
      ],
      delete: [
        "/Library/LaunchAgents/com.cyberpower.powerpanel-personal.client.plist",
        "/Library/LaunchDaemons/com.cyberpower.powerpanel-personal.daemon.plist",
      ]
end
