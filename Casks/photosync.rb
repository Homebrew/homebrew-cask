cask "photosync" do
  version "4.2,420"
  sha256 "20e6e268697a0b8b3841ed30b12e738cdb0a6452b86537dfa258793bbf65d63d"

  url "https://download.photosync-app.com/mac/photosync_#{version.csv.first.dots_to_underscores}.zip"
  name "PhotoSync Companion"
  homepage "https://www.photosync-app.com/home.html"

  livecheck do
    url "https://download.photosync-app.com/xml/photosyncmac-updates-standalone.xml"
    strategy :sparkle
  end

  app "PhotoSync.app"
end
