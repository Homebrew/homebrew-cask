cask "idisplay" do
  version :latest
  sha256 :no_check

  url "http://getidisplay.com/downloads/iDisplayMac.dmg"
  name "iDisplay"
  homepage "http://getidisplay.com/"

  pkg "iDisplay.pkg"

  uninstall launchctl: "ag.shape.MSMToolHelper",
            pkgutil:   [
              "ag.shape.iDisplay.pkg",
              "ag.shape.MSM*.pkg",
            ],
            signal:    ["TERM", "com.shapeservices.idisplay-host-full"]

  zap trash: "~/Library/Preferences/com.shapeservices.idisplay-host-full.plist"

  caveats do
    kext
    reboot
  end
end
