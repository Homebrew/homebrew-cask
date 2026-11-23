cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.19"
  sha256 arm:   "024ecb34e34a6289196870c0d5b3c1c226caed9683f78d490f5fe0a322f728ff",
         intel: "e15fc332339a42eb46fdf9ed1f4667e73b4c5062e14ce93f421d23b2bfd3d741"

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
