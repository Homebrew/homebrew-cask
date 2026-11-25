cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.20"
  sha256 arm:   "f5f7e2e9cec26d6ed92a85fb7d35a5657119e60065f2ca02057d9f6a64466785",
         intel: "795fd0564c2b66e1b3369055b1dfd416a21dfb0f0f81b083a5149fc694caf5f2"

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
