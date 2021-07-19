cask "path-finder" do
  version "10.1.1,2096"
  sha256 "277ba9fd9ed41e7af59a4c88574d25c7f78469f8bb6177d14a135388d130e056"

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
