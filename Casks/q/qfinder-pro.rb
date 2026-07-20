cask "qfinder-pro" do
  version "7.13.3,0521"
  sha256 "ce75df250c5396af335ee0d64ca229f32be4caa33096938564eb679e7142ad23"

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Qnap Qfinder Pro"
  desc "NAS management application"
  homepage "https://www.qnap.com/en/utilities#utliity_5"

  livecheck do
    url "https://update.qnap.com/SoftwareRelease.xml"
    strategy :xml do |xml|
      item = xml.elements[
        "//application[productName[text()='Qfinder']]" \
        "/platform[platformName[text()='Mac_for_QT']]/software",
      ]
      next if item.blank?

      version = item.elements["version"]&.text&.strip
      build = item.elements["buildNumber"]&.text&.strip
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  depends_on :macos

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
