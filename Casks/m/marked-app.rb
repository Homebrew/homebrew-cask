cask "marked-app" do
  version "3.2.22,1240"
  sha256 "38fb6d289b67c8b2823269d9be04111e2ca3878e6194b4409f101b6312351fc8"

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
