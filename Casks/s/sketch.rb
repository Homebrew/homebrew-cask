cask "sketch" do
  on_big_sur :or_older do
    version "96.3,167315"
    sha256 "3ba2c147aab6b2fcb4b5cc3e3ee7fce3f63551e6ef743a7afe459bd0a87bb4a6"

    url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :big_sur"
  end
  on_monterey :or_newer do
    version "98,176399"
    sha256 "cae3616517624ccc62ab6f2dd290ed8d31aa01b4a7af3e11f1b98acf838f9cb8"

    url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"

    livecheck do
      url "https://download.sketch.com/sketch-versions.xml"
      strategy :sparkle
    end

    depends_on macos: ">= :monterey"
  end

  name "Sketch"
  desc "Digital design and prototyping platform"
  homepage "https://www.sketch.com/"

  auto_updates true

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
