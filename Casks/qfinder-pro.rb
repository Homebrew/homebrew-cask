cask "qfinder-pro" do
  version "7.5.1.0708"
  sha256 "dd5ae56f770af2ad8fc164ff883ca4d752184ad8a6d59f8490e4fe123e1a20f2"

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
