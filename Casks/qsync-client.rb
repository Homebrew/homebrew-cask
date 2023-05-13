cask "qsync-client" do
  version "5.0.8.0330"
  sha256 "a5837beb4f7aed4b76297aa46647cc1732ab4e4858bc61f4486acb6c8e2ef8b2"

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
