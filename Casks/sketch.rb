cask "sketch" do
  version "88.1,145978"
  sha256 "aa03443fa49b69de90258dd9c2d84b29487a8a0e2bcf66456222bbf1f9761b87"

  url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"
  name "Sketch"
  desc "Digital design and prototyping platform"
  homepage "https://www.sketch.com/"

  livecheck do
    url "https://download.sketch.com/sketch-versions.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Sketch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*",
    "~/Library/Application Support/com.bohemiancoding.sketch3",
    "~/Library/Autosave Information/com.bohemiancoding.sketch3.plist",
    "~/Library/Caches/com.bohemiancoding.sketch3",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3",
    "~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies",
    "~/Library/HTTPStorages/com.bohemiancoding.sketch3.binarycookies",
    "~/Library/Logs/com.bohemiancoding.sketch3",
    "~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist",
    "~/Library/Preferences/com.bohemiancoding.sketch3.plist",
    "~/Library/Saved Application State/com.bohemiancoding.sketch3.savedState",
  ]
end
