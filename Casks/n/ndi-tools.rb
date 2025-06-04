cask "ndi-tools" do
  version "6.2.0.3"
  sha256 :no_check

  url "https://downloads.ndi.tv/Tools/NDIToolsInstaller.pkg",
      verified: "downloads.ndi.tv/Tools/"
  name "NDI Tools"
  desc "Tools & plugins for NDI"
  homepage "https://ndi.video/tools/"

  livecheck do
    url "https://downloads.ndi.tv/Tools/ndi_tools_osx_current_version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :monterey"

  pkg "NDIToolsInstaller.pkg"

  uninstall launchctl: "com.newtek.cmio.DPA.NDI",
            pkgutil:   [
              "com.newtek.Application-Mac-NDI-AccessManager",
              "com.newtek.Application-Mac-NDI-ScanConverter",
              "com.newtek.Application-Mac-NDI-StudioMonitor",
              "com.newtek.Application-Mac-NDI-VirtualInput",
              "com.newtek.DAL.NDIplugin",
              "com.newtek.DAL.NDIpluginlaunchdaemon",
              "com.newtek.driver.NDIAudio",
              "com.newtek.HAL.NDIaudioplugin",
              "com.newtek.NDI-HX-Driver",
              "com.newtek.NDI-Tools",
              "com.newtek.NDI-Transmit-AdobeCC",
              "com.newtek.NDI.prefpane",
              "com.newtek.ndi.recording",
              "com.newtek.ndidiscovery",
              "com.newtek.NDIRouter",
              "com.newtek.NDIVirtualCamera",
              "com.newtek.NewTek-Import-SpeedHQ",
              "com.newtek.Test-Patterns-Mac-",
            ]

  zap trash: [
    "/Library/Application Support/NewTek",
    "/Library/LaunchDaemons/com.newtek.cmio.DPA.NDI.plist",
    "~/Library/Caches/com.newtek.NDI-Tools",
    "~/Library/Preferences/com.newtek.Application-Mac-NDI-ScanConverter.plist",
    "~/Library/Preferences/com.newtek.Application-Mac-NDI-StudioMonitor.plist",
    "~/Library/Preferences/com.newtek.NDI-Tools.plist",
    "~/Library/Preferences/com.newtek.Test-Patterns-Mac-.plist",
    "~/Library/WebKit/com.newtek.NDI-Tools",
  ]
end
