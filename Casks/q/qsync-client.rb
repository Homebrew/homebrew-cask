cask "qsync-client" do
  version "5.1.0.1222"
  sha256 "e51ad79df8c16ce85c8cb8ab78fd37b6f2f274193b66435bcf23b7eada02b5f8"

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  name "Qnap Qsync"
  desc "Automatic file synchronization"
  homepage "https://www.qnap.com/en/utilities/essentials#utliity_3"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    regex(/QNAPQsyncClientMac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  installer manual: "Qsync Client.pkg"

  uninstall quit:    [
              "com.qnap.qsync",
              "com.qnap.qsync.findersync",
            ],
            pkgutil: "com.qnap.qsync"

  zap trash: [
    "~/Library/Application Scripts/com.qnap.qsync",
    "~/Library/Application Scripts/com.qnap.qsync.findersync",
    "~/Library/Containers/com.qnap.qsync",
    "~/Library/Containers/com.qnap.qsync.findersync",
    "~/Library/Group Containers/group.com.qnap.qsync",
  ]
end
