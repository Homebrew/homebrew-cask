cask "safari-technology-preview" do
  # TODO: When possible, update this to remove the `on_sequoia :or_older` block,
  # update the Tahoe block to `on_tahoe :or_older`, add an
  # `on_golden_gate :or_newer` block, and use `depends_on macos: :tahoe`.
  on_sequoia :or_older do
    version "244,122-88534-20260521-6dc38dc5-09a4-4572-985a-13bccab2baca"
    sha256 "31967983d9557954828224869f2bc446395d3f33f383202f89799344a5d2ed2b"

    livecheck do
      skip "Legacy version"
    end
  end
  # when adjusting the on_{os} scoping, also update the livecheck regex
  on_tahoe :or_newer do
    version "246,140-18555-20260617-903317e6-560d-4370-9252-0be4d87523ea"
    sha256 "bf34c0da8804ecfad524df1f0d271a7201cba138bb8130c9225aa0347a5b0c64"

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

  url "https://secure-appldnld.apple.com/STP/#{version.csv.second}/SafariTechnologyPreview.dmg"
  name "Safari Technology Preview"
  desc "Web browser"
  homepage "https://developer.apple.com/safari/resources/"

  auto_updates true
  depends_on macos: :sequoia

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
