cask "powerpanel" do
  version "2.3.4"
  sha256 "2f61bedb57d3e40a7ca692d07e3048a3b5e0ae3ed805e3d83043d231d3209c47"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/PPP_Mac_v#{version}.dmg",
      verified: "dl4jz3rbrsfum.cloudfront.net/"
  name "CyberPower PowerPanel Personal"
  desc "Manage and control UPS systems"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/PPP_Mac[._-]v?(\d+(?:.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  installer manual: "CyberPower PowerPanel Personal Installer.app"

  uninstall pkgutil:   "com.cpsww.ppupsd",
            launchctl: "com.cpsww.ppupsd",
            delete:    "/Applications/CyberPower PowerPanel Personal"
end
