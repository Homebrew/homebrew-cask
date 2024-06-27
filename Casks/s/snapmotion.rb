cask "snapmotion" do
  version "5.2.4"
  sha256 "fcb1b8c0a74f3369484c6b99dd672369e46e183320291040f0095f6e9845344a"

  url "https://neededapps.com/appcasts/snapmotion/versions/#{version}"
  name "SnapMotion"
  desc "Extract images from videos"
  homepage "https://neededapps.com/snapmotion/"

  livecheck do
    url "https://neededapps.com/appcasts/snapmotion/changelog.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "SnapMotion.app"

  zap trash: [
    "~/Library/Application Support/SnapMotion",
    "~/Library/Caches/com.jeremyvizzini.snapmotion.osx",
    "~/Library/Preferences/com.jeremyvizzini.snapmotion.osx.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.snapmotion.osx.savedState",
  ]
end
