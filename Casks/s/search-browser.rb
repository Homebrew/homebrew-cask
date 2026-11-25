cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.21"
  sha256 arm:   "5433b278aac3eddd3ec4d6b071f79d1e13025e736a1fb30cb7f08def84c00d0f",
         intel: "4ab760f8b00a8ee2e444877d47519a3df2a6adafa2eae63234f3de540daa47ea"

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
