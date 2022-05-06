cask "qfinder-pro" do
  version "7.7.0.1407"
  sha256 "06ab7fad7bc891da728be0a163ebe73efd29c361259465fa14be7ee6241ab7f0"

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  name "Qnap Qfinder Pro"
  desc "NAS management application"
  homepage "https://www.qnap.com/en/utilities#utliity_5"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    regex(/QNAPQfinderProMac[._-](\d+(?:\.\d+)+)\.dmg/i)
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
