cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.14"
  sha256 arm:   "27eadbb99ada164383c0b694ba8ed974693c308b96754d2052c5041e03daa994",
         intel: "18c2a3a8938a91ae92f02357a7b1e9cdd7ece9d8b686a9a8e7675a0797dad80a"

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
