cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.17"
  sha256 arm:   "79ecb4eb89da0f3c20e420ef2d7758b93f0d3d1cf572ea97fa9d712c7c1bb625",
         intel: "1c947394bb7dc25a4d41069828fa0e7aa246a411beb0b78f46651c6d69d1956e"

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
