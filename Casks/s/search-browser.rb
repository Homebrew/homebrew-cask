cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.16"
  sha256 arm:   "ac9ceac943cadf10cf03710b5f192e9672604176328e8b18e5291d2bda142454",
         intel: "f04572207a74f675de4bb21b49276026174f7fb09b2910b0e724d19a2cd3e962"

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
