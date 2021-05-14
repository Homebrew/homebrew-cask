cask "qudedup-extract-tool" do
  version "1.1.4.21020"
  sha256 "c1a3faddb50271c5bfa7428eb70b3464ec44abbdf9f4dc673ea8cf5f8590c441"

  url "https://download.qnap.com/Storage/Utility/QudedupExToolMac-#{version}.dmg"
  name "Qnap QuDedup Extract Tool"
  desc "Restoring deduplicated .qdff files to their normal status"
  homepage "https://www.qnap.com/en/utilities#utliity_18"

  livecheck do
    url "https://update.qnap.com/SoftwareReleaseS.xml"
    regex(%r{/QudedupExToolMac-(\d+(?:\.\d+)*)\.dmg}i)
  end

  pkg "QudedupExTool.pkg"

  uninstall pkgutil: [
    "com.qnap.pkg.QuDedupExTool",
  ]

  zap trash: [
    "~/Library/Application Support/QNAP/QuDedup Extract Tool",
    "~/Library/Preferences/QNAP/QuDedup Extract Tool.plist",
    "~/Library/Preferences/com.qnap.QuDedupExTool.plist",
    "~/Library/Saved Application State/com.qnap.QuDedupExTool.savedState",
  ]
end
