cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.18"
  sha256 arm:   "c16139d5391c74e66af053518b642192e4de6823d90a7f5cf088cff419dd5295",
         intel: "2724e123af2aa7e3e1f0688f7171c86d95dfacac0ea2c0d8895a0895c6e3e93c"

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
