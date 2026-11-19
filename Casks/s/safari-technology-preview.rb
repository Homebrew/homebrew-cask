cask "safari-technology-preview" do
  on_tahoe :or_older do
    version "257,142-68493-20261118-77438b3b-e8e1-4c91-9f96-001cd5a98069"
    sha256 "db2f58535716f12cb1c05cd9c866ac4fc2c173ef194be407c0f7048a911f713f"

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
    version "257,142-68495-20261118-aa18e73c-a899-4615-a28a-eca5706c3f84"
    sha256 "e5397cc5f6d3c6357c08de6d7372ac6c74e9e0ac88d1569be7e97b3ef10344ab"

    url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechnologyPreview.dmg"

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

    pkg "Safari Technology Preview.pkg"
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
