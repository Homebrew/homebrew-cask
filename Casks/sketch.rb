cask "sketch" do
  version "72,124316"
  sha256 "4a9c5ce17a56e2418eedf387bab730c397ef7840f57f6dc1f2dc995e5338bf8e"

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
