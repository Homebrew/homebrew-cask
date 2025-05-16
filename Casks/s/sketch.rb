cask "sketch" do
  on_big_sur :or_older do
    version "96.3,167315"
    sha256 "3ba2c147aab6b2fcb4b5cc3e3ee7fce3f63551e6ef743a7afe459bd0a87bb4a6"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "100.3,180165"
    sha256 "e51efde061eb3d5b9b999f7821d0d547114ce5b3ed06c0ca3278d60fb4d92678"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "101.9,182113"
    sha256 "e6de9d00399f4511711f895c74b909496f690d4f0f4ba66340b158106262e873"

    # Older versions may have a more recent `pubDate` than newer versions, so
    # we have to check all of the items in the appcast.
    livecheck do
      url "https://download.sketch.com/sketch-versions.xml"
      strategy :sparkle do |items|
        items.map(&:nice_version)
      end
    end
  end

  url "https://download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"
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
