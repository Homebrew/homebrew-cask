cask "superwhisper" do
  version "2.16.0"
  sha256 "c3274edba6d595f1419ecd1eedb2d135c818e569a9f7ba1913b7e3acab9fe6e9"

  url "https://builds.superwhisper.com/v#{version}/superwhisper.zip"
  name "superwhisper"
  desc "Dictation tool including LLM reformatting"
  homepage "https://superwhisper.com/"

  livecheck do
    url "https://superwhisper.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
