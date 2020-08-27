cask "sketch" do
  version "68.1-102560"
  sha256 "db6fda97637608d426b261c9e25501ea22f81c7c93c5cf2dc5d3d43ac9019f3a"

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast "https://download.sketchapp.com/sketch-versions.xml"
  name "Sketch"
  homepage "https://www.sketchapp.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Sketch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*",
    "~/Library/Application Support/com.bohemiancoding.sketch3",
    "~/Library/Caches/com.bohemiancoding.sketch3",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3",
    "~/Library/Logs/com.bohemiancoding.sketch3",
    "~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist",
    "~/Library/Preferences/com.bohemiancoding.sketch3.plist",
    "~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies",
  ]
end
