cask "cocoapacketanalyzer" do
  version "4.2.0"
  sha256 "e8aca2ff97efb3b52cf5085b5c94d5f4e9cc7713d38ed203c5a580e4096a5c32"

  url "https://appcast.tastycocoabytes.com/cpa/downloads/CPA_#{version.no_dots}.dmg"
  name "Cocoa Packet Analyzer"
  desc "Network protocol analyzer and packet sniffer"
  homepage "https://www.tastycocoabytes.com/"

  livecheck do
    url "https://appcast.tastycocoabytes.com/cpa/appcast.xml"
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
    "~/Library/Application Scripts/com.tastycocoabytes.CocoaPacketAnalyzer.CPAQLSpotlightImporter",
    "~/Library/Application Support/CocoaPacketAnalyzer",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tastycocoabytes.cocoapacketanalyzer.sfl*",
    "~/Library/Containers/com.tastycocoabytes.CocoaPacketAnalyzer.CPAQLExt",
    "~/Library/Containers/com.tastycocoabytes.CocoaPacketAnalyzer.CPAQLSpotlightImporter",
    "~/Library/Preferences/com.tastycocoabytes.CocoaPacketAnalyzer.plist",
    "~/Library/Saved Application State/com.tastycocoabytes.CocoaPacketAnalyzer.savedState",
  ]
end
