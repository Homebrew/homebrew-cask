cask "lg-onscreen-control" do
  version "6.40,d2aqx1VL5bkFTWeJG4k1PQ"
  sha256 "7ea0796b1c6f375c0ed9d06ed64cc621eb55a95368868fc3da12068e503a0b1c"

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
