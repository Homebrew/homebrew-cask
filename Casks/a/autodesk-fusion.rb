cask "autodesk-fusion" do
  version :latest
  sha256 :no_check

  url "https://dl.appstreaming.autodesk.com/production/installers/Fusion%20Client%20Downloader.dmg"
  name "Autodesk Fusion 360"
  desc "Integrated CAD, CAM, CAE, and PCB software"
  homepage "https://www.autodesk.com/products/fusion-360/overview"

  installer script: {
    executable: "#{staged_path}/Install Autodesk Fusion.app/Contents/MacOS/Fusion Client Downloader",
    args:       ["--quiet"],
  }

  uninstall quit:   [
              "com.autodesk.dls.streamer.scriptapp.Autodesk-Fusion",
              "com.autodesk.fusion",
            ],
            script: {
              executable: "#{staged_path}/Install Autodesk Fusion.app/Contents/MacOS/streamer",
              args:       [
                "--process", "uninstall",
                "--quiet",
                "--silent",
                "--purge-incomplete"
              ],
            },
            delete: [
              "~/Applications/Autodesk Fusion Service Utility.app",
              "~/Applications/Autodesk Fusion.app",
              "~/Applications/Remove Autodesk Fusion.app",
            ]

  zap trash: [
    "/Users/Shared/Autodesk",
    "~/.config/Autodesk",
    "~/Library/Application Support/Autodesk",
    "~/Library/Application Support/Fusion 360",
    "~/Library/Caches/com.autodesk.AdskIdentityManager",
    "~/Library/Caches/com.autodesk.fusion360",
    "~/Library/Caches/com.autodesk.fusion360.senddmp",
    "~/Library/Caches/com.Autodesk.streamer",
    "~/Library/HTTPStorages/com.autodesk.fusion360.binarycookies",
    "~/Library/HTTPStorages/com.Autodesk.streamer",
    "~/Library/Logs/autodesk.webdeploy.streamer.log",
    "~/Library/Preferences/com.autodesk.adskidentitymanager.Autodesk Identity Manager.plist",
    "~/Library/Preferences/com.autodesk.EAGLE 9.7.0.plist",
    "~/Library/Preferences/com.autodesk.fusion360.plist",
    "~/Library/Saved Application State/com.autodesk.fusion360.savedState",
    "~/Library/Saved Application State/com.Autodesk.streamer.savedState",
    "~/Library/WebKit/com.autodesk.AdskIdentityManager",
  ]

  caveats do
    requires_rosetta
  end
end
