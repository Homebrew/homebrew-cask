cask "fontexplorer-x-pro" do
  version "7.2.5"
  sha256 "9b275bb36d51943b93ff226c317d8caaf62d7e58b885614bbc5b1bc6d5ff02c2"

  url "https://fast.fontexplorerx.com/FontExplorerXPro#{version.no_dots}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect_curl.cgi?url=https://fex.linotype.com/download/mac/FontExplorerXPro.dmg",
          must_contain: version.no_dots
  name "FontExplorer X Pro"
  desc "Font finder and organizer"
  homepage "https://www.fontexplorerx.com/"

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
