cask "path-finder" do
  version "10.1.2,2097"
  sha256 "f2742d6e45664d461756c44d13a8482fcc5cf7f08156fca624493123a7f7d342"

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
