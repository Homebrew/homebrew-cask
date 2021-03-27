cask "photosync" do
  version "4.0,401"
  sha256 "1a912729cb38991b645c6cd2fd04d4e48e5cbe2fbe8da3ad817a68f4c7ad1974"

  url "https://download.photosync-app.com/mac/photosync_#{version.before_comma.dots_to_underscores}.zip"
  name "PhotoSync Companion"
  homepage "https://www.photosync-app.com/home.html"

  livecheck do
    url "https://download.photosync-app.com/xml/photosyncmac-updates-standalone.xml"
    strategy :sparkle
  end

  app "PhotoSync.app"
end
