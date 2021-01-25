cask "qfinder-pro" do
  version "7.4.4.0115"
  sha256 "8e7bc5295fc214184d492c90a0070e12ec592ee8cb1619ae1277f49095ad69a2"

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
