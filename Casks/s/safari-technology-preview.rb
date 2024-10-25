cask "safari-technology-preview" do
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_sonoma :or_older do
    version "206,072-08950-20241023-188851ED-4122-4C48-8CD5-D051028E72E3"
    sha256 "0920435cbfb9b6704da39dffe10114403b8807dc3d389ba9da88f547f954eb41"

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
    version "206,072-08948-20241023-DC27D632-2694-4EB3-932A-C6977DFBB776"
    sha256 "ffb7a65d1ad75198852b91b28560b3df76a3f26aec47120ecea7d54b118056de"

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
