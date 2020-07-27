cask "deckset" do
  version "2.0.18,2582"
  sha256 "aa8d1044aa719b746c56a0e02d4f454033da41460fd2e347f497a609981118e5"

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast "https://dl.decksetapp.com/appcast.xml"
  name "Deckset"
  homepage "https://www.decksetapp.com/"

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
