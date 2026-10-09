cask "safari-technology-preview" do
  on_tahoe :or_older do
    version "254,142-29069-20261008-2015600e-8f9b-41ba-8709-ce9bc77a1fa0"
    sha256 "b3274c1673653451e7146de0584277493a4ee2af9dde694adba7004cfe80c022"

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
    version "254,142-36179-20261008-3c90402e-c681-4700-bb14-4265744f1038"
    sha256 "5b2bb12269d5a851f074eb0519b2e7c29997721d2bf31453ecdfd387141c91f8"

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
