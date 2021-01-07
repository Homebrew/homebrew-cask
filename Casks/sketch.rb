cask "sketch" do
  version "70.3,109109"
  sha256 "9a296b8befd7e373efbc4ecc3dcacf4eb04ef798db556bd660c40f2973f01a50"

  url "https://download.sketchapp.com/sketch-#{version.before_comma}-#{version.after_comma}.zip"
  name "Sketch"
  desc "Digital design and prototyping platform"
  homepage "https://www.sketchapp.com/"

  livecheck do
    url "https://download.sketchapp.com/sketch-versions.xml"
    strategy :sparkle
  end

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
    "~/Library/HTTPStorages/com.bohemiancoding.sketch3.binarycookies",
    "~/Library/Saved Application State/com.bohemiancoding.sketch3.savedState",
    "~/Library/Autosave Information/com.bohemiancoding.sketch3.plist",
  ]
end
