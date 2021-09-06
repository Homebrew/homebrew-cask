cask "marked" do
  version "2.6.9,1022"
  sha256 "6a797ca8b027242aafa4dcea805eaaddcadc17f1fbee557242952b849e9a6f19"

  url "https://updates.marked2app.com/Marked#{version.before_comma}#{version.after_comma}.zip"
  name "Marked"
  desc "Previewer for Markdown, MultiMarkdown and other text markup languages"
  homepage "https://marked2app.com/"

  livecheck do
    url "https://updates.marked2app.com/marked.xml"
    strategy :sparkle
  end

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
