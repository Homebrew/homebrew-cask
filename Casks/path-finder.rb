cask "path-finder" do
  version "10.2,2098"
  sha256 "d29ac285f7b5712146cc3ce327534e9e67b2a93fec460190dd833a6d5b99ab8a"

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
    "~/Library/Application Support/Path Finder",
    "~/Library/Preferences/com.cocoatech.PathFinder.plist",
  ]
end
