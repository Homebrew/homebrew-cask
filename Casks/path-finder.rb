cask "path-finder" do
  version "2123"
  sha256 :no_check

  url "https://get.cocoatech.com/PathFinder.dmg"
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
    "~/Library/Application Support/Path Finder",
    "~/Library/Preferences/com.cocoatech.PathFinder.plist",
  ]
end
