cask "safari-technology-preview" do
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_sonoma :or_older do
    version "211,072-56948-20250109-4389d281-e64f-4822-b9c3-d795f36d68b2"
    sha256 "04b69593b278c098e500b66ec2c07068a4c9ca4f2e14df945505c7b7d0d4847c"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20|\+)?Technology(?:%20|\+)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*14[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)[^<]*<}i, 1]
        id = page[regex, 1]
        "#{release},#{id}"
      end
    end
  end
  on_sequoia :or_newer do
    version "211,072-56950-20250109-1572d28b-ee77-49a0-904e-99c7461452a6"
    sha256 "275488f5b2e1309fd3b48de9bb4f2872ea4b8673dc7cdb22c26a8579ddf9b367"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20|\+)?Technology(?:%20|\+)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*15[\s.<]
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
  depends_on macos: ">= :sonoma"

  pkg "Safari Technology Preview.pkg"

  uninstall launchctl: "com.apple.SafariTechnologyPreview.History",
            quit:      "com.apple.SafariTechnologyPreview",
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
