cask "colorchecker-camera-calibration" do
  version "2.1.0"
  sha256 "8e574d3fb707576ea8e230bbd6608d1bf3dd17537d38bb56be9356d1047e124d"

  url "https://downloads.xrite.com/downloads/software/ColorCheckerPassport/Mac/v#{version}/ColorCheckerCameraCalibration.zip",
      verified: "downloads.xrite.com/downloads/software/ColorCheckerPassport/Mac/"
  name "ColorChecker Camera Calibration"
  desc "Software to build custom camera profiles"
  homepage "https://xritephoto.com/ph_product_overview.aspx?ID=2632&action=overview"

  pkg "ColorChecker Camera Calibration.pkg"

  uninstall pkgutil: [
    "com.xrite.colorcheckercameracalibration.colorcheckercameracalibration.XRiteColorCheckerCameraCalibration.pkg",
    "com.xrite.colorcheckercameracalibration.colorcheckercameracalibration.Help.pkg",
    "com.xrite.colorcheckercameracalibration.colorcheckercameracalibration.mac.pkg",
  ],
            delete:  "/System/Applications/ColorChecker Camera Calibration.app"
end
