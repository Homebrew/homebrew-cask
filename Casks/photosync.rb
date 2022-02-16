cask "photosync" do
  version "4.1,410"
  sha256 "d1e08a18dd3ac4f464b29bf3a75105104f16276093cfa5a21ee021dfcb7e53ae"

  url "https://download.photosync-app.com/mac/photosync_#{version.csv.first.dots_to_underscores}.zip"
  name "PhotoSync Companion"
  homepage "https://www.photosync-app.com/home.html"

  livecheck do
    url "https://download.photosync-app.com/xml/photosyncmac-updates-standalone.xml"
    strategy :sparkle
  end

  app "PhotoSync.app"
end
