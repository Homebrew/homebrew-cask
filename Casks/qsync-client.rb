cask "qsync-client" do
  version "5.0.3.0328"
  sha256 "9977c153f16858353df7f735e492395de75a9eec95a37761247c0c10ec626958"

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
