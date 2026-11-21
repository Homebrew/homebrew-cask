cask "marked-app" do
  version "3.2.35,1257"
  sha256 "87b91eda709920e691f9b6734645e12a2077097c8905f6942f5457dfa9167ccd"

  url "https://updates.markedapp.com/updates/Marked%20#{version.csv.first}-#{version.csv.second}.zip"
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
    "~/Library/Application Scripts/com.brettterpstra.marked.Share",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brettterpstra.marked.sfl*",
    "~/Library/Application Support/com.brettterpstra.marked",
    "~/Library/Application Support/Marked",
    "~/Library/Caches/com.brettterpstra.marked",
    "~/Library/Caches/Marked",
    "~/Library/Containers/com.brettterpstra.marked.Share",
    "~/Library/HTTPStorages/com.brettterpstra.marked",
    "~/Library/Logs/Marked",
    "~/Library/Preferences/com.brettterpstra.marked.plist",
    "~/Library/Saved Application State/com.brettterpstra.marked.savedState",
    "~/Library/WebKit/com.brettterpstra.marked",
  ]
end
