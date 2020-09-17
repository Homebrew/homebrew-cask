cask "path-finder" do
  version "9.4"
  sha256 "3a577025c00384880636085b00c401b200aab23491c03b35417e960d06930c7d"

  url "https://get.cocoatech.com/PF#{version.major}.dmg"
  appcast "https://get.cocoatech.com/releasecast.xml"
  name "Path Finder"
  desc "File manager"
  homepage "https://cocoatech.com/"

  auto_updates true

  app "Path Finder.app"

  zap trash: [
    "~/Library/Preferences/com.cocoatech.PathFinder.plist",
    "~/Library/Application Support/Path Finder",
  ]
end
