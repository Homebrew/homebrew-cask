cask "qsync-client" do
  version "5.0.1.0802"
  sha256 "7643bfc85cb134bbc1d77d64abf5c9dc1b249f9caa611bdff7a563c7a5dd45f8"

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
