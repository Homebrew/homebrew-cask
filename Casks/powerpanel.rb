cask "powerpanel" do
  version "2.3.0"
  sha256 "5500b9ff1528c72ef2dacf0c03558b9cf3cbb68a5cc0bc0657c51bf49566b847"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/ppp_macos_#{version.dots_to_underscores}.dmg",
      verified: "dl4jz3rbrsfum.cloudfront.net/"
  name "CyberPower PowerPanel Personal"
  desc "Manage and control UPS systems"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page[%r{href=.*?/ppp_macos_(\d+(?:_\d+)*)\.dmg}i, 1]
      next if match.blank?

      match.tr("_", ".")
    end
  end

  depends_on macos: ">= :mojave"

  installer manual: "CyberPower PowerPanel Personal Installer.app"

  uninstall pkgutil:   "com.cpsww.ppupsd",
            launchctl: "com.cpsww.ppupsd",
            delete:    "/Applications/CyberPower PowerPanel Personal"
end
