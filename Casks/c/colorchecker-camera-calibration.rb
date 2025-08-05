cask "colorchecker-camera-calibration" do
  version "2.3.0"
  sha256 "a7d6d0335447b8ad85de935e3f7a37ec69895cddb8282c4c55a960d4b332db17"

  url "https://downloads.xrite.com/downloads/software/ColorCheckerPassport/Mac/v#{version}/ColorCheckerCameraCalibration.zip",
      verified: "downloads.xrite.com/downloads/software/ColorCheckerPassport/Mac/"
  name "ColorChecker Camera Calibration"
  desc "Software to build custom camera profiles"
  homepage "https://calibrite.com/photo-target"

  livecheck do
    url "https://my.xrite.com/downloader.aspx?FileID=2324&Type=M"
    strategy :header_match
  end

  pkg "ColorCheckerCameraCalibration.pkg"

  uninstall \
    pkgutil: [
      "com.xrite.colorcheckercameracalibration.colorcheckercameracalibration.Help.pkg",
      "com.xrite.colorcheckercameracalibration.colorcheckercameracalibration.mac.pkg",
      "com.xrite.colorcheckercameracalibration.colorcheckercameracalibration.XRiteColorCheckerCameraCalibration.pkg",
    ],
    delete:  "/System/Applications/ColorChecker Camera Calibration.app"

  caveats do
    requires_rosetta
  end
end
