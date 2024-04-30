cask "deckset" do
  version "2.0.30,2677"
  sha256 "a0d3882360569273c3033b6ff810727fa34c32271e8645565093a01a90d8d15d"

  url "https://dl.decksetapp.com/Deckset+#{version.csv.first}+(#{version.csv.second}).dmg"
  name "Deckset"
  desc "Presentations from Markdown"
  homepage "https://www.decksetapp.com/"

  livecheck do
    url "https://dl.decksetapp.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Deckset.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unsignedinteger.deckset-paddle.sfl*",
    "~/Library/Application Support/com.unsignedinteger.Deckset-Paddle",
    "~/Library/Application Support/Deckset",
    "~/Library/Caches/com.apple.helpd/Generated/com.unsignedinteger.Deckset.Helpbook*",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.unsignedinteger.Deckset-Paddle",
    "~/Library/Caches/com.unsignedinteger.Deckset-Paddle",
    "~/Library/HTTPStorages/com.unsignedinteger.Deckset-Paddle*",
    "~/Library/Preferences/com.unsignedinteger.Deckset-Paddle.plist",
    "~/Library/Saved Application State/com.unsignedinteger.Deckset-Paddle.savedState",
  ]
end
