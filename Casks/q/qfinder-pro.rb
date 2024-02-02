cask "qfinder-pro" do
  version "7.10.2.0125"
  sha256 "37f32ed350c88e00bb8ff3666a80affd8fbb4f59bd51fafc880cdf98a062eeb5"

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  name "Qnap Qfinder Pro"
  desc "NAS management application"
  homepage "https://www.qnap.com/en/utilities#utliity_5"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    regex(/QNAPQfinderProMac[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "Qfinder Pro.pkg"

  uninstall launchctl: "com.qnap.qsoftwareupdater",
            pkgutil:   "qnap.com.Qfinder"

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
