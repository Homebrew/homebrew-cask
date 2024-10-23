cask "cocoapacketanalyzer" do
  version "2.1.4"
  sha256 "38adc0282b74f6ccba16725a3222d37774765db460dd965bb9fcba92c539b169"

  url "https://www.tastycocoabytes.com/_downloads/CPA_#{version.no_dots}.dmg"
  name "cocoapacketanalyzer"
  desc "Network protocol analyzer and packet sniffer"
  homepage "https://www.tastycocoabytes.com/"

  livecheck do
    url "https://www.tastycocoabytes.com/cpa/updates/appcast2.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

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
