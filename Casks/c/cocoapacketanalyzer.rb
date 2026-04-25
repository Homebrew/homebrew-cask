cask "cocoapacketanalyzer" do
  version "2.5.0"
  sha256 "1cf9e35064047e4710d34bf54ccd25e2517c49b0591635ead9f3595c1dccd4c7"

  url "https://www.tastycocoabytes.com/_downloads/CPA_#{version.no_dots}.dmg"
  name "Cocoa Packet Analyzer"
  desc "Network protocol analyzer and packet sniffer"
  homepage "https://www.tastycocoabytes.com/"

  livecheck do
    url "https://www.tastycocoabytes.com/cpa/updates/appcast2.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :tahoe"

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
