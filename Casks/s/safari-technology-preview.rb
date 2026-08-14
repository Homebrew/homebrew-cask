cask "safari-technology-preview" do
  on_tahoe :or_older do
    version "250,140-89042-20260813-ef259790-1d29-421a-8f8c-c943f6f44be0"
    sha256 "15058eae5299b2da373f46eebf968c65bcaf126992ed7beb7a31c556bdb271a1"

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
  end
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_golden_gate :or_newer do
    version "247,140-34366-20260630-87ebbe6a-e3ef-4af1-9d0e-848f2ab2ec7a"
    sha256 "65b28478653fd40a51c6488814793e785e07cc7632d7ddc337e6d1a1f4ec9e2b"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20|\+)?Technology(?:%20|\+)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*27[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)[^<]*<}i, 1]
        id = page[regex, 1]
        "#{release},#{id}"
      end
    end
  end

  url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechnologyPreview.dmg"
  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/resources/"

  auto_updates true
  depends_on macos: :tahoe

  pkg "Safari Technology Preview.pkg"

  uninstall launchctl: [
              "com.apple.AuthenticationServicesCore.AuthenticationServicesAgent-STP",
              "com.apple.SafariTechnologyPreview.History",
              "com.apple.SafariTechnologyPreview.SyncService",
              "com.apple.webkit.webpushd.relocatable",
            ],
            quit:      "com.apple.SafariTechnologyPreview",
            pkgutil:   "com.apple.pkg.SafariTechPreviewPackage",
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
