cask "safari-technology-preview" do
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_sonoma :or_older do
    version "204,062-87739-20240930-8A86860F-D925-450C-93F7-B74043F5F724"
    sha256 "a106c61edcf6d3ea65d44e3717a51a47da2c41b29a65e82c06e42beefa79dcfd"

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
    version "204,062-87727-20240930-663580F7-4503-4D39-B829-52CB016D06F8"
    sha256 "b62dfead26864dfab0fd83977e3cbdcaf6c317a1603bf17fea5235d99c24eb67"

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
