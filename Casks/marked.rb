cask "marked" do
  version "2.6.0,1004"
  sha256 "ab0c9d0a7060a8b7d0ce57c5d58bc11d22b3ad6cb81d501e8d71d606c5142d52"

  url "https://updates.marked2app.com/Marked#{version.before_comma}#{version.after_comma}.zip"
  appcast "https://updates.marked2app.com/marked.xml"
  name "Marked"
  homepage "https://marked2app.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap trash: [
    "~/Library/Application Support/Marked #{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked#{version.major}.sfl*",
    "~/Library/Caches/Marked #{version.major}",
    "~/Library/Caches/com.brettterpstra.marked#{version.major}",
    "~/Library/Logs/Marked #{version.major}",
    "~/Library/Preferences/com.brettterpstra.marked#{version.major}.plist",
    "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
  ]
end
