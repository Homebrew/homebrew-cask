cask "cocoapacketanalyzer" do
  version "2.6.0"
  sha256 "3086bc62ef17df3f4121174ce3ef1b86258d5b7feb2cd62ebf007095f8c53c35"

  url "https://www.tastycocoabytes.com/_downloads/CPA_#{version.no_dots}.dmg"
  name "Cocoa Packet Analyzer"
  desc "Network protocol analyzer and packet sniffer"
  homepage "https://www.tastycocoabytes.com/"

  livecheck do
    url "https://www.tastycocoabytes.com/cpa/updates/appcast2.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :tahoe

  app "CocoaPacketAnalyzer.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.tastycocoabytes.cpasniffd.plist",
    "/Library/PrivilegedHelperTools/com.tastycocoabytes.cpasniffd",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.tastycocoabytes.CocoaPacketAnalyzer.CPAQLExt",
    "~/Library/Application Support/CocoaPacketAnalyzer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tastycocoabytes.cocoapacketanalyzer.sfl*",
    "~/Library/Containers/com.tastycocoabytes.CocoaPacketAnalyzer.CPAQLExt",
    "~/Library/Preferences/com.tastycocoabytes.CocoaPacketAnalyzer.plist",
    "~/Library/Saved Application State/com.tastycocoabytes.CocoaPacketAnalyzer.savedState",
  ]
end
