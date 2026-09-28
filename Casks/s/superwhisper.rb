cask "superwhisper" do
  version "2.18.5"
  sha256 "8ca0a0a202fbeceae2b28f143a3850d518f2cd6c0328937d20ea8e772ce743a8"

  url "https://builds.superwhisper.com/v#{version}/superwhisper.zip"
  name "Superwhisper"
  desc "Dictation tool including LLM reformatting"
  homepage "https://superwhisper.com/"

  livecheck do
    url "https://superwhisper.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

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
