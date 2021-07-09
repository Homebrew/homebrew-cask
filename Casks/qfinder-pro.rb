cask "qfinder-pro" do
  version "7.5.0.0428"
  sha256 "934bab0a96f0a1b423f9c55d5e95160d3377d7aca6580a2c12678ca8653e8880"

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  name "Qnap Qfinder Pro"
  desc "NAS management application"
  homepage "https://www.qnap.com/en/utilities#utliity_5"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    regex(%r{/QNAPQfinderProMac-(\d+(?:\.\d+)*)\.dmg}i)
  end

  pkg "Qfinder Pro.pkg"

  uninstall pkgutil: "qnap.com.Qfinder"

  zap trash: [
    "~/Library/Application Support/QNAP/QfinderPro",
    "~/Library/Preferences/QNAP/Qfinder.plist",
    "~/Library/Saved Application State/qnap.com.qfinder.savedState",
  ],
      rmdir: [
        "~/Library/Application Support/QNAP",
        "~/Library/Preferences/QNAP",
      ]
end
