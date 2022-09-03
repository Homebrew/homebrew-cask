cask "powerpanel" do
  version "2.4.6"
  sha256 "85e4bcdaf178e3f2919aff1ad638bc9e80dcdbfa3a868486613aafb0d775c8a8"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/PPP_Mac_v#{version}.dmg",
      verified: "dl4jz3rbrsfum.cloudfront.net/"
  name "CyberPower PowerPanel Personal"
  desc "Manage and control UPS systems"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  livecheck do
    url "https://www.cyberpowersystems.com/product/software/power-panel-personal/powerpanel-personal-mac/"
    regex(%r{href=.*?/PPP_Mac[._-]v?(\d+(?:.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  installer manual: "CyberPower PowerPanel Personal Installer.app"

  uninstall pkgutil:   "com.cpsww.ppupsd",
            launchctl: "com.cpsww.ppupsd",
            delete:    "/Applications/CyberPower PowerPanel Personal"
end
