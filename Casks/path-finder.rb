cask "path-finder" do
  version "10.0.3,2089"
  sha256 "db3ec0c61ca85be9b94c4480b4344f5f3193d13bf3206c02f9111f9e2f804b34"

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
