cask "search" do
  arch intel: "-Intel"

  version "1.0.12"
  sha256 arm:   "8ae47f13f7bf737df4c142e29742cbeb661657ea98819ddb5a8711295bf5cd5c",
         intel: "c6ab0b6bebd94539b3654f9f0a57fc28dd22e4f5fa324e944a77c96c5f8dc026"

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
