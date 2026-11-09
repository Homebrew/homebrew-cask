cask "simple-comic" do
  version "1.11.0"
  sha256 "2ed7f3e86f5c8c42e29f78d46183947224514d2ccac48913b6aa80aa8f634ce0"

  url "https://github.com/MaddTheSane/Simple-Comic/releases/download/App-Store-#{version}/Simple.Comic.#{version}.zip"
  name "Simple Comic"
  desc "Comic viewer/reader"
  homepage "https://github.com/MaddTheSane/Simple-Comic"

  depends_on macos: :sequoia

  app "Simple Comic.app"

  zap trash: [
    "~/Library/Application Scripts/com.ToWatchList.SimpleComic",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.towatchlist.simplecomic.sfl*",
    "~/Library/Application Support/Simple Comic",
    "~/Library/Containers/com.ToWatchList.SimpleComic",
  ]
end
