cask "safari-technology-preview" do
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_sonoma :or_older do
    version "198,062-20835-20240703-E4CA0D96-97C7-4ABC-9664-DA019810C41F"
    sha256 "e3d331ea236563a7ac9a8c481378f24513cd4972422045afb246d3f83f7fabfc"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20)?Technology(?:%20)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*14[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)\s*<}i, 1]
        id = page[regex, 1]
        "#{release},#{id}"
      end
    end
  end
  on_sequoia :or_newer do
    version "198,062-20841-20240703-D251DC61-C7EA-44EE-881F-CE8C65E9BA56"
    sha256 "bce86e12204d4a56daefb4266384f9f723cac75a692efadd5edf547046447065"

    livecheck do
      url :homepage
      regex(%r{
        href=.*?/([^/]+)/Safari(?:%20)?Technology(?:%20)?Preview\.dmg
        .*?macOS(?:\s|&nbsp;)*15[\s.<]
      }ix)
      strategy :page_match do |page, regex|
        release = page[%r{>\s*Release\s*</p>\s*<p[^>]*>\s*(\d+)\s*<}i, 1]
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
