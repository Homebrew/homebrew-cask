cask "path-finder" do
  version "26.1.7"
  sha256 :no_check

  url "https://get.cocoatech.com/PathFinder.dmg",
      verified: "get.cocoatech.com/"
  name "Path Finder"
  desc "File manager"
  homepage "https://www.cocoatech.io/"

  livecheck do
    url "https://get.cocoatech.com/releasecast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Path Finder.app"

  zap trash: [
    "~/Library/Application Support/Path Finder",
    "~/Library/Preferences/com.cocoatech.PathFinder.plist",
  ]
end
