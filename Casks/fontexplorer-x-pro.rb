cask "fontexplorer-x-pro" do
  version "7.3.0"
  sha256 "8d13ce547084465c90e2b88bcf1cfe60fcf3b318434d8f163c18468f7ef43548"

  url "https://fast.fontexplorerx.com/FontExplorerXPro#{version.no_dots}.dmg"
  name "FontExplorer X Pro"
  desc "Font finder and organizer"
  homepage "https://www.fontexplorerx.com/"

  livecheck do
    url "https://fex.linotype.com/download/mac/FontExplorerXPro.dmg"
    strategy :header_match do |headers|
      headers["location"][/FontExplorerXPro(\d+).dmg/i, 1].split("", 3).join(".")
    end
  end

  app "FontExplorer X Pro.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.linotype.FontExplorerX.securityhelper",
            launchctl: [
              "com.linotype.FontExplorerX.securityhelper",
              "com.linotype.FontFolderProtector",
            ],
            quit:      "com.linotype.FontExplorerX"

  zap trash: [
    "~/Library/Application Support/Linotype/FontExplorer X",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.linotype.fontexplorerx.sfl*",
    "~/Library/Caches/com.linotype.FontExplorerX",
    "~/Library/Caches/Metadata/FontExplorer X",
    "~/Library/Cookies/com.linotype.FontExplorerX.binarycookies",
    "~/Library/Preferences/com.linotype.FontExplorerX.plist",
    "~/Library/Saved Application State/com.linotype.FontExplorerX.savedState",
    "/Users/Shared/.FontExplorer X Server",
    "/Users/Shared/FontExplorer X Server",
  ]
end
