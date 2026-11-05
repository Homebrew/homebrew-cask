cask "superwhisper" do
  version "3.2.0"
  sha256 "c6fc59ad7ba183cef9abf9e86da913f7275342eb92a3270ea83068816f84b585"

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
