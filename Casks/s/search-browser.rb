cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.15"
  sha256 arm:   "453bbb6de507264f74d3b8560b50275ddcf845a51fd3574637e853e5be9ae8a2",
         intel: "ab754a430269a0913d4df702deae0d7b68f018327e43a52e96ab5001533c1355"

  url "https://github.com/driceroland/Search/releases/download/v#{version}/Search#{arch}.dmg"
  name "Search"
  desc "WebKit-based web browser"
  homepage "https://officecommun.com/search"

  auto_updates true
  depends_on macos: :sonoma

  app "Search.app"

  zap trash: [
    "~/Library/Application Support/Search",
    "~/Library/Caches/com.officecommun.search",
    "~/Library/HTTPStorages/com.officecommun.search",
    "~/Library/HTTPStorages/com.officecommun.search.binarycookies*",
    "~/Library/Preferences/com.officecommun.search.plist",
    "~/Library/WebKit/com.officecommun.search",
  ]
end
