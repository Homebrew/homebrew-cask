cask "deckset" do
  version "2.0.46,2789"
  sha256 "0ad75187e51b8097dedd42132d756e2779553a5e52b37a03e9b60bec50df492b"

  url "https://dl.decksetapp.com/Deckset+#{version.csv.first}+(#{version.csv.second}).dmg"
  name "Deckset"
  desc "Presentations from Markdown"
  homepage "https://www.decksetapp.com/"

  livecheck do
    url "https://dl.decksetapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

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
