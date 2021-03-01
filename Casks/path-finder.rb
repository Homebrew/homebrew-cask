cask "path-finder" do
  version "10.0.2,2086"
  sha256 "15746dc6b3d4a10084fcb67c545b09f265dbd8eee92736a1c2123f6404c7906b"

  url "https://get.cocoatech.com/PF#{version.major}.dmg"
  name "Path Finder"
  desc "File manager"
  homepage "https://cocoatech.com/"

  livecheck do
    url "https://get.cocoatech.com/releasecast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Path Finder.app"

  zap trash: [
    "~/Library/Preferences/com.cocoatech.PathFinder.plist",
    "~/Library/Application Support/Path Finder",
  ]
end
