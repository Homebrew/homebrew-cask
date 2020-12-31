cask "qfinder-pro" do
  version "7.4.2.1118"
  sha256 "121ab79617ce7a861b6ae9f422efe98268a5a3fcddfcc3eada3c1a5d8ab22a71"

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  name "Qnap Qfinder Pro"
  desc "NAS management application"
  homepage "https://www.qnap.com/en/utilities#utliity_5"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    regex(%r{/QNAPQfinderProMac-(\d+(?:\.\d+)*)\.dmg}i)
  end

  pkg "Qfinder Pro.pkg"

  uninstall pkgutil: [
    "qnap.com.qfinder.*",
    "qnap.com.Qfinder",
  ],
            delete:  [
              "/Applications/Qfinder Pro.app",
              "/Applications/Qfinder Pro.app/Contents/Resources/Qfinder Pro.app",
            ]
end
