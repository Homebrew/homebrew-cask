cask "ptpwebcam" do
  version "1.2.6"
  sha256 "6d77dbb9d6052397f953b49e4a218cb809ec864a9cf3dfc83318f788c71e88c4"

  url "https://github.com/dognotdog/ptpwebcam/releases/download/v#{version}/PTP_Webcam-v#{version}.pkg",
      verified: "https://github.com/dognotdog/ptpwebcam"
  name "ptpwebcam"
  desc "DSLR live view video plugin"
  homepage "https://ptpwebcam.org/"

  livecheck do
    url :url
    strategy :git
    regex(/^v(\d+(?:\.\d+)*)$/)
  end

  pkg "PTP_Webcam-v#{version}.pkg"

  uninstall pkgutil:   [
    "org.ptpwebcam.pkg.EnableChrome",
    "org.ptpwebcam.pkg.EnableSkype",
    "org.ptpwebcam.pkg.EnableZoom",
    "org.ptpwebcam.pkg.PTPWebcam",
    "org.ptpwebcam.pkg.RemoveEOSWebcam",
  ],
            launchctl: [
              "org.ptpwebcam.PtpWebcamAgent",
              "org.ptpwebcam.PtpWebcamAssistant",
            ],
            delete:    [
              "/Library/CoreMediaIO/Plug-ins/DAL/PTPWebcamDALPlugin.plugin",
              "/Library/LaunchDaemons/org.ptpwebcam.PtpWebcamAssistant.plist",
            ]
end
