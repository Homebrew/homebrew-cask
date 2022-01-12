cask "deckset" do
  version "2.0.20,2595"
  sha256 "21a5bec7d831e277a35d244ecb9e64b2cc171fee1e9d06f4943735e355ced3e3"

  url "https://dl.decksetapp.com/Deckset+#{version.csv.first}+(#{version.csv.second}).dmg"
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
