cask "powerpanel" do
  version "2.2.0"
  sha256 "41c29dfb1ecf68294dd81199bdebb12aed42382988d1e03798d492a9bbd2fe71"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/ppp_macos_#{version.dots_to_underscores}.dmg",
      verified: "dl4jz3rbrsfum.cloudfront.net/"
  name "CyberPower PowerPanel Personal"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  depends_on macos: ">= :sierra"

  installer manual: "CyberPower PowerPanel Personal Installer.app"

  uninstall pkgutil:   "com.cpsww.ppupsd",
            launchctl: "com.cpsww.ppupsd",
            delete:    "/Applications/CyberPower PowerPanel Personal"
end
