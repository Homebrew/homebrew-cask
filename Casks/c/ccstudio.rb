cask "ccstudio" do
  version "1.1.4"
  sha256 "090ea91ebd83d360e9e32cc519067f0924d3e1dfe90967e9cbcc99a7fbc7773a"

  url "https://downloads.xrite.com/Downloads/Software/ccStudio/v#{version}/mac/ccStudio.zip",
      verified: "downloads.xrite.com/Downloads/Software/ccStudio/"
  name "ccStudio"
  desc "Color management tool for accurate monitor and printer calibration"
  homepage "https://calibrite.com/us/software-downloads/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/mac/ccStudio\.zip}i)
  end

  depends_on macos: ">= :catalina"

  pkg "ccStudio.pkg"

  uninstall launchctl: "com.xrite.device.xrdd (com.xrite.device.xrdd.plist)",
            pkgutil:   [
              "com.xrite.xritedeviceservices.installer.pkg",
              "X-Rite.com.i1studio.ccStudio.pkg",
            ]

  zap trash: [
    "/Library/Application Support/Calibrite/ccStudio",
    "~/Library/Preferences/com.calibrite.ccStudio.plist",
    "~/Library/Preferences/com.x-rite.ccStudio.plist",
  ]
end
