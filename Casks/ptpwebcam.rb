cask "ptpwebcam" do
  version "1.3.1"
  sha256 "43d38fd1d047d1119201f6cda21ddee6e8272bdae7a6908c0ccf0dee6850ee7c"

  url "https://github.com/dognotdog/ptpwebcam/releases/download/v#{version}/PTP_Webcam-v#{version}.pkg",
      verified: "https://github.com/dognotdog/ptpwebcam"
  name "ptpwebcam"
  desc "DSLR live view video plugin"
  homepage "https://ptpwebcam.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  pkg "PTP_Webcam-v#{version}.pkg"

  uninstall pkgutil:   [
              "org.ptpwebcam.pkg.EnableChrome",
              "org.ptpwebcam.pkg.EnableSkype",
              "org.ptpwebcam.pkg.EnableTeams",
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
