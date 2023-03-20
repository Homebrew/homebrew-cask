cask "qsync-client" do
  version "5.0.5.1416"
  sha256 "8b827231fd2d3f29287105138239b0b784e387b51a1f6fe94c46b4f27e8a0e17"

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  name "Qnap Qsync"
  desc "Automatic file synchronization"
  homepage "https://www.qnap.com/en/utilities/essentials#utliity_3"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    regex(/QNAPQsyncClientMac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  installer manual: "Qsync Client.pkg"

  uninstall pkgutil: "com.qnap.qsync",
            quit:    [
              "com.qnap.qsync",
              "com.qnap.qsync.findersync",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.qnap.qsync",
    "~/Library/Application Scripts/com.qnap.qsync.findersync",
    "~/Library/Containers/com.qnap.qsync",
    "~/Library/Containers/com.qnap.qsync.findersync",
    "~/Library/Group Containers/group.com.qnap.qsync",
  ]
end
