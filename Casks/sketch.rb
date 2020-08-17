cask "sketch" do
  version "68-102490"
  sha256 "fd8791f27a4ead3e3e24c5f231adba070d5bb900196f0d70bea1dea9743f3d4d"

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
