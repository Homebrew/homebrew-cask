cask "gopro-webcam" do
  version "1.3"
  sha256 :no_check

  url "https://community.gopro.com/html/assets/GoPro.Webcam.pkg"
  name "GoPro Webcam"
  desc "GoPro utility for using GoPro as a webcam"
  homepage "https://community.gopro.com/t5/Webcam/ct-p/Webcam"

  livecheck do
    url "https://community.gopro.com/t5/en/How-To-Use-Your-GoPro-As-A-Webcam/ta-p/665493#releasenotes"
    strategy :page_match
    regex(%r{Mac\s*Webcam\s*</B><BR\s/>Version\s*(\d+(?:\.\d+)*)}i)
  end

  pkg "GoPro.Webcam.pkg"

  uninstall pkgutil:   [
    "GoPro.GoPro-Webcam",
    "com.gopro.cmio.DAL.GoProWebCam",
  ],
            quit:      "GoPro.GoPro-Webcam",
            launchctl: "com.gopro.GoProWebcamDaemon"
end
