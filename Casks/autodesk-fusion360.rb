cask "autodesk-fusion360" do
  # NOTE: "360" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url "https://dl.appstreaming.autodesk.com/production/installers/Fusion%20360%20Client%20Downloader.dmg"
  name "Autodesk Fusion 360"
  desc "Integrated CAD, CAM, CAE, and PCB software"
  homepage "https://www.autodesk.com/products/fusion-360"

  installer script: {
    executable: "#{staged_path}/Install Autodesk Fusion 360.app/Contents/MacOS/Fusion 360 Client Downloader",
  }

  uninstall quit:   [
              "com.autodesk.fusion360",
              "com.autodesk.dls.streamer.scriptapp.Autodesk-Fusion-360",
            ],
            script: {
              executable: "#{staged_path}/Install Autodesk Fusion 360.app/Contents/MacOS/streamer",
              args:       [
                "--process", "uninstall",
                "--appid", "73e72ada57b7480280f7a6f4a289729f",
                "--stream", "production",
                "--quiet"
              ],
            },
            delete: [
              "~/Applications/Autodesk Fusion 360.app",
              "~/Applications/Remove Autodesk Fusion 360.app",
            ]

  zap trash: [
    "/Users/Shared/Autodesk",
    "~/.config/Autodesk",
    "~/Library/Application Support/Autodesk",
    "~/Library/Caches/com.autodesk.AdskIdentityManager",
    "~/Library/Caches/com.Autodesk.streamer",
    "~/Library/HTTPStorages/com.Autodesk.streamer",
    "~/Library/Logs/autodesk.webdeploy.streamer.log",
    "~/Library/Preferences/com.autodesk.adskidentitymanager.Autodesk Identity Manager.plist",
    "~/Library/Preferences/com.autodesk.EAGLE 9.7.0.plist",
    "~/Library/Saved Application State/com.autodesk.fusion360.savedState",
    "~/Library/Saved Application State/com.Autodesk.streamer.savedState",
    "~/Library/WebKit/com.autodesk.AdskIdentityManager",
  ]
end
