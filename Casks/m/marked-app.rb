cask "marked-app" do
  version "3.0.23,1153"
  sha256 "e9e0c4210e68ed63e6d603f17223b48162200ac90a76809a57c0cd5e6cdf7780"

  url "https://updates.markedapp.com/updates/Marked%20#{version.csv.first}.zip"
  name "Marked"
  desc "Previewer for Markdown, MultiMarkdown and other text markup languages"
  homepage "https://markedapp.com/"

  livecheck do
    url "https://updates.markedapp.com/updates/marked3.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Marked.app"

  uninstall quit: "com.brettterpstra.marked"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked.sfl*",
    "~/Library/Application Support/Marked",
    "~/Library/Caches/com.brettterpstra.marked",
    "~/Library/Caches/Marked",
    "~/Library/Logs/Marked",
    "~/Library/Preferences/com.brettterpstra.marked.plist",
    "~/Library/Saved Application State/com.brettterpstra.marked.savedState",
  ]
end
