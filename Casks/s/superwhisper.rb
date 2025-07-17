cask "superwhisper" do
  version "2.1.1"
  sha256 "ab3f9e3eae173439b4fea7222f50c0c9fdfe008598360b732df7a2f6ecac2880"

  url "https://builds.superwhisper.com/v#{version}/superwhisper.zip"
  name "superwhisper"
  desc "Dictation tool including LLM reformatting"
  homepage "https://superwhisper.com/"

  livecheck do
    url "https://superwhisper.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "superwhisper.app"

  uninstall quit: "com.superduper.superwhisper"

  zap trash: [
    "~/Documents/superwhisper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superduper.superwhisper.sfl*",
    "~/Library/Application Support/superwhisper",
    "~/Library/Caches/com.superduper.superwhisper",
    "~/Library/HTTPStorages/com.superduper.superwhisper",
    "~/Library/Preferences/com.superduper.superwhisper.plist",
    "~/Library/Saved Application State/com.superduper.superwhisper.savedState",
    "~/Library/WebKit/com.superduper.superwhisper",
  ]
end
