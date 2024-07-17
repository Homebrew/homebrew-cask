cask "sketch" do
  on_big_sur :or_older do
    version "96.3,167315"
    sha256 "3ba2c147aab6b2fcb4b5cc3e3ee7fce3f63551e6ef743a7afe459bd0a87bb4a6"

    url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "100.2,180162"
    sha256 "e1eb71f363a6e32867b39b403e97d70a959d3c96ad6970760a20e45a020986e4"

    url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"

    livecheck do
      url "https://download.sketch.com/sketch-versions.xml"
      strategy :sparkle
    end
  end

  name "Sketch"
  desc "Digital design and prototyping platform"
  homepage "https://www.sketch.com/"

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
