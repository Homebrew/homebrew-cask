cask "qudedup-extract-tool" do
  version "1.1.7,26043"
  sha256 "7e5c1712c209f566d9159ed4dae0c85037ad15e4c7ce483a7aea470dad53bffa"

  url "https://download.qnap.com/Storage/Utility/QNAPQuDedupExToolMac-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Qnap QuDedup Extract Tool"
  desc "Restoring deduplicated .qdff files to their normal status"
  homepage "https://www.qnap.com/en/utilities#utliity_18"

  livecheck do
    url "https://update.qnap.com/SoftwareReleaseS.xml"
    strategy :xml do |xml|
      item = xml.elements[
        "//application[productName[text()='QuDedup Extract Tool']]" \
        "/platform[platformName[text()='Mac']]/software",
      ]
      next if item.blank?

      version = item.elements["version"]&.text&.strip
      build = item.elements["buildNumber"]&.text&.strip
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  pkg "QudedupExTool.pkg"

  uninstall pkgutil: "com.qnap.pkg.QuDedupExTool"

  zap trash: [
        "~/Library/Application Support/QNAP/QuDedup Extract Tool",
        "~/Library/Preferences/com.qnap.QuDedupExTool.plist",
        "~/Library/Preferences/QNAP/QuDedup Extract Tool.plist",
        "~/Library/Saved Application State/com.qnap.QuDedupExTool.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/QNAP",
        "~/Library/Preferences/QNAP",
      ]
end
