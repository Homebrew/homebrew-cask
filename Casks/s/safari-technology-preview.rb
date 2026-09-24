cask "safari-technology-preview" do
  on_tahoe :or_older do
    version "253,142-24187-20260923-6196541d-da39-4524-a01c-0fab0cea6a08"
    sha256 "d1c7592d3f33e3f1f8925b11bd6b236b744d37ac113a3d517c8d6bd1575f0347"

    url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechnologyPreview.dmg"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20|\+)?Technology(?:%20|\+)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*26[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)[^<]*<}i, 1]
        id = page[regex, 1]
        "#{release},#{id}"
      end
    end

    pkg "Safari Technology Preview.pkg"
  end
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_golden_gate :or_newer do
    version "253,142-27948-20260923-e61cf471-d516-4ac4-9b4c-f08e459272dc"
    sha256 "dbfcc270a845b9a7ac74b13b762808ef19a5652eabadc5b7719291754dc01c8e"

    url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechPreview#{version.csv.first}.dmg"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20|\+)?Tech(?:nology)?(?:%20|\+)?Preview\d*\.dmg
        .*?macOS(?:\s|&nbsp;)*27[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)[^<]*<}i, 1]
        id = page[regex, 1]
        "#{release},#{id}"
      end
    end

    pkg "SafariTechPreview#{version.csv.first}.pkg"
  end

  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/resources/"

  auto_updates true
  depends_on macos: :tahoe

  uninstall launchctl: [
              "com.apple.AuthenticationServicesCore.AuthenticationServicesAgent",
              "com.apple.AuthenticationServicesCore.AuthenticationServicesAgent-STP",
              "com.apple.SafariSyncService",
              "com.apple.SafariTechnologyPreview.History",
              "com.apple.SafariTechnologyPreview.SyncService",
              "com.apple.webkit.webpushd",
              "com.apple.webkit.webpushd.relocatable",
            ],
            quit:      "com.apple.SafariTechnologyPreview",
            pkgutil:   "com.apple.pkg.SafariTechPreview*",
            delete:    "/Applications/Safari Technology Preview.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.SafariTechnologyPreview*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apple.safaritechnologypreview.sfl*",
    "~/Library/Caches/com.apple.SafariTechnologyPreview",
    "~/Library/Containers/com.apple.SafariTechnologyPreview*",
    "~/Library/Preferences/com.apple.SafariTechnologyPreview*",
    "~/Library/SafariTechnologyPreview",
    "~/Library/Saved Application State/com.apple.SafariTechnologyPreview.savedState",
    "~/Library/SyncedPreferences/com.apple.SafariTechnologyPreview*",
    "~/Library/WebKit/com.apple.SafariTechnologyPreview",
  ]
end
