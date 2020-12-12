cask "photosync" do
  version "4.0"
  sha256 "1a912729cb38991b645c6cd2fd04d4e48e5cbe2fbe8da3ad817a68f4c7ad1974"

  url "https://download.photosync-app.com/mac/photosync_#{version.dots_to_underscores}.zip"
  appcast "https://download.photosync-app.com/xml/photosyncmac-updates-standalone.xml"
  name "PhotoSync Companion"
  homepage "https://www.photosync-app.com/home.html"

  app "PhotoSync.app"
end
