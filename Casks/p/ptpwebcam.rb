cask "ptpwebcam" do
  version "1.3.2"
  sha256 "3945f3fdda5b438584b769ee5d2e99a4d7cf7869db348c24ee387f033c8f02cc"

  url "https://github.com/dognotdog/ptpwebcam/releases/download/v#{version}/PTP_Webcam-v#{version}.pkg",
      verified: "github.com/dognotdog/ptpwebcam/"
  name "PTP Webcam"
  desc "DSLR live view video plugin"
  homepage "https://ptpwebcam.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  pkg "PTP_Webcam-v#{version}.pkg"

  uninstall launchctl: [
              "org.ptpwebcam.PtpWebcamAgent",
              "org.ptpwebcam.PtpWebcamAssistant",
            ],
            pkgutil:   [
              "org.ptpwebcam.pkg.EnableChrome",
              "org.ptpwebcam.pkg.EnableSkype",
              "org.ptpwebcam.pkg.EnableTeams",
              "org.ptpwebcam.pkg.EnableZoom",
              "org.ptpwebcam.pkg.PTPWebcam",
              "org.ptpwebcam.pkg.RemoveEOSWebcam",
            ],
            delete:    [
              "/Library/CoreMediaIO/Plug-ins/DAL/PTPWebcamDALPlugin.plugin",
              "/Library/LaunchDaemons/org.ptpwebcam.PtpWebcamAssistant.plist",
            ]

  zap trash: [
    "~/Library/Caches/org.ptpwebcam.PtpWebcamAgent",
    "~/Library/HTTPStorages/org.ptpwebcam.PtpWebcamAgent",
    "~/Library/Preferences/org.ptpwebcam.PtpWebcamAgent.plist",
  ]
end
