cask "search-browser" do
  arch intel: "-Intel"

  version "1.0.22"
  sha256 arm:   "72a609c07bbb126b301e07f5106131d20622e4294aaa916c0a7c0ba91f9397f3",
         intel: "47e9ba63ad2a236b85a893b9c000a581e5203733a544f470125549c885faec37"

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
