cask "snapmotion" do
  version "4.5.0,6036"
  sha256 "b2e3f27e8a98f993a98e60b3885ba16d5c4c4e308bb9f83743fff6d8503700b5"

  url "https://neededapps.com/appcasts/snapmotion/versions/SM-#{version.before_comma}.zip"
  name "SnapMotion"
  desc "Extract images from videos"
  homepage "https://neededapps.com/snapmotion/"

  livecheck do
    url "https://neededapps.com/appcasts/snapmotion/changelog.xml"
    strategy :sparkle
  end

  app "SnapMotion.app"

  zap trash: [
    "~/Library/Application Support/SnapMotion",
    "~/Library/Caches/com.jeremyvizzini.snapmotion.osx",
    "~/Library/Preferences/com.jeremyvizzini.snapmotion.osx.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.snapmotion.osx.savedState",
  ]
end
