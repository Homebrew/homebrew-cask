cask "simple-comic" do
  version "1.12.0"
  sha256 "589351a3e5381351841fcda1cc29d85e0ee743c1a1f6142e8d1eba902c001619"

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
