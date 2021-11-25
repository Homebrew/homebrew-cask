cask "snapmotion" do
  version "5.0.0,6047"
  sha256 "0ae4cce46467c838002b408c336967aea851aa2d51d45967b3bdc3957e356440"

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
