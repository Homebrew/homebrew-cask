cask "sketch" do
  version "76,130267"
  sha256 "4195844af857b9927e5923367a404ed6ef8f42629b8c2610cd724d73b0522997"

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
