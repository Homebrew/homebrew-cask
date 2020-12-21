cask "deckset" do
  version "2.0.19,2589"
  sha256 "8a5518e538137a54c70bf6e9e285b965f5da1ff60e13af77ce3ac9b6dc524fb9"

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  name "Deckset"
  homepage "https://www.decksetapp.com/"

  livecheck do
    url "https://dl.decksetapp.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Deckset.app"

  zap trash: [
    "~/Library/Application Support/Deckset",
    "~/Library/Application Support/com.unsignedinteger.Deckset-Paddle",
    "~/Library/Preferences/com.unsignedinteger.Deckset-Paddle.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.unsignedinteger.deckset-paddle.sfl*",
    "~/Library/Caches/com.unsignedinteger.Deckset-Paddle",
  ]
end
