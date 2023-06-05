cask "qfinder-pro" do
  version "7.8.4.0323"
  sha256 "83f7f5773e3fea4563be67556b61f1bee119e325c5dc6d5333ce7f8179e2507d"

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  name "Qnap Qfinder Pro"
  desc "NAS management application"
  homepage "https://www.qnap.com/en/utilities#utliity_5"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    regex(/QNAPQfinderProMac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
