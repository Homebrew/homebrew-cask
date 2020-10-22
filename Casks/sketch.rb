cask "sketch" do
  version "69.1-107496"
  sha256 "beaeb9cfe778e68ca22b808f5eed594f4293825d62e4c0ad42f807687f6d8878"

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast "https://download.sketchapp.com/sketch-versions.xml"
  name "Sketch"
  desc "Digital design and prototyping platform"
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
