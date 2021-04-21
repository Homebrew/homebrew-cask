cask "qfinder-pro" do
  version "7.4.5.0121"
  sha256 "2908275ab87a5cd56084ead0f44c47187b3278b4031d1682d5750132f4a5f171"

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
