cask "idisplay" do
  version "3.5.0"
  sha256 :no_check

  url "https://getidisplay.com/downloads/iDisplayMac.dmg"
  name "iDisplay"
  desc "Use a tablet as an extra screen"
  homepage "https://getidisplay.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "iDisplay.pkg"

  uninstall pkgutil: [
    "com.shapeservices.idisplay-host-full",
    "com.shapeservices.msm.driver.MSMFramebuffer",
    "com.shapeservices.msm.driver.MSMVideoDevice",
  ]

  zap trash: "~/Library/Preferences/com.shapeservices.idisplay-host-full.plist"

  caveats do
    kext
    reboot
  end
end
