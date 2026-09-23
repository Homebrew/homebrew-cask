cask "marked-app" do
  version "3.2.9,1227"
  sha256 "f18de2fe4dc6a09bc8a43d1b259bc43c109b66a142d0d69d0a6f8fdb524ec334"

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
