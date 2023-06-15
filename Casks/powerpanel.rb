cask "powerpanel" do
  version "2.4.8"
  sha256 "b3517556c2fb9b6dfc0b912ec60b10f12ce54d7075f43d2d727a48d3e264f1b0"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/ppp_macos_#{version.dots_to_underscores}.dmg",
      verified: "dl4jz3rbrsfum.cloudfront.net/"
  name "CyberPower PowerPanel Personal"
  desc "Manage and control UPS systems"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  livecheck do
    url "https://www.cyberpowersystems.com/product/software/power-panel-personal/powerpanel-personal-mac/"
    regex(%r{href=.*?/ppp_macos[._-]v?(\d+(?:_\d+)*)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".").to_s }
    end
  end

  depends_on macos: ">= :mojave"

  installer manual: "CyberPower PowerPanel Personal Installer.app"

  uninstall pkgutil:   "com.cpsww.ppupsd",
            launchctl: "com.cpsww.ppupsd",
            delete:    "/Applications/CyberPower PowerPanel Personal"

  zap trash:  [
        "~/Library/Preferences/PowerPanel Personal.plist",
        "~/Library/Saved Application State/PowerPanel Personal.savedState",
      ],
      delete: [
        "/Library/LaunchAgents/com.cyberpower.powerpanel-personal.client.plist",
        "/Library/LaunchDaemons/com.cyberpower.powerpanel-personal.daemon.plist",
      ]
end
