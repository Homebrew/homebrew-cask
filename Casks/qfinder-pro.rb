cask "qfinder-pro" do
  version "7.6.0.0913"
  sha256 "04389b47b7c6a5be6819237b92a9649e60cbf26e296c0933b63de16e0416e4c5"

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
