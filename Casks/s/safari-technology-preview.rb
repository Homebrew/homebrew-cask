cask "safari-technology-preview" do
  on_tahoe :or_older do
    version "256,142-53570-20261104-0a424b2d-98ac-491c-9215-ddf803ed6253"
    sha256 "db9d2e5f01eda23d02f483110dce5eb328d53da42a94fe57f0bd3f4cc59a6a43"

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
    version "255,142-43796-20261022-5c49ab3e-e501-4219-a605-c14a70cf5e86"
    sha256 "fa9022a5b885db69383e9db0e8a3bd711a9f101f216af8a5ade8f2277a1ffd02"

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
