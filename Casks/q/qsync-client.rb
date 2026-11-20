cask "qsync-client" do
  version "5.1.7,0923"
  sha256 "066f87aaa22f0492acaa4bc7921a02352125634a2e6d38a46a5028dee9a1f40b"

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Qnap Qsync"
  desc "Automatic file synchronisation"
  homepage "https://www.qnap.com/en/utilities/essentials#utliity_3"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    strategy :xml do |xml|
      item = xml.elements["//application[productName[text()='Qsync']]/platform[platformName[text()='Mac']]/software"]
      next if item.blank?

      version = item.elements["version"]&.text&.strip
      build = item.elements["buildNumber"]&.text&.strip
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  depends_on :macos

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
