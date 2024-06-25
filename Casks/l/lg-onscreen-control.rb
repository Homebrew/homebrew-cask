cask "lg-onscreen-control" do
  version "6.27,oWq3quvrsstVvB99LTzsGg"
  sha256 "ffe27767ccbab2c9321ad3e955ec0c0cfe8b96b1f65760767441bfd33c9f1454"

  url "https://gscs-b2c.lge.com/downloadFile?fileId=#{version.csv.second}",
      verified: "lge.com/"
  name "LG OnScreen Control"
  desc "Displays all connected LG monitor information"
  homepage "https://www.lg.com/us/support/monitors"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :mojave"

  pkg "OSC_V#{version.csv.first}_signed.pkg"

  postflight do
    system_command "/bin/chmod",
                   args: ["755", "/usr/local", "/usr/local/lmm"],
                   sudo: true
  end

  uninstall quit:       [
              "com.LGSI.OnScreen-Control",
              "com.LGSI.OSCMultiMonitor",
            ],
            login_item: [
              "OnScreen Control",
              "OSCMultiMonitor",
            ],
            pkgutil:    [
              "com.lge.onscreenControl.*",
              "com.lge.OnscreenControl.*",
              "com.OSC.Fonts.pkg",
              "com.OSC_Directory.pkg",
              "com.OSC_Library.pkg",
              "com.OSCApp.pkg",
              "com.OSCMultiMonitor.pkg",
              "com.uninstall.pkg",
              "com.uninstallOSC.pkg",
            ]

  zap trash: [
    "~/Library/Caches/com.LGSI.OnScreen-Control",
    "~/Library/Caches/com.LGSI.OSCMultiMonitor",
    "~/Library/Preferences/com.LGSI.OnScreen-Control.plist",
    "~/Library/Preferences/com.LGSI.OSCMultiMonitor.plist",
  ]
end
