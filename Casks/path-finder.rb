cask "path-finder" do
  version "10.0"
  sha256 "b66f8885f8b10339108ca7f5eefe53f34957cb28252b8472d0c9bc23499549ec"

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
