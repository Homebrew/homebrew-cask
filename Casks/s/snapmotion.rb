cask "snapmotion" do
  version "5.3.0"
  sha256 "c5fbf20c42b388e81e8d01c73b3f6795bcc9e63d1f2b7690ebd77fe0ae151677"

  url "https://neededapps.com/appcasts/snapmotion/versions/#{version}"
  name "SnapMotion"
  desc "Extract images from videos"
  homepage "https://neededapps.com/snapmotion/"

  livecheck do
    url "https://neededapps.com/appcasts/snapmotion/changelog.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SnapMotion.app"

  zap trash: [
    "~/Library/Application Support/SnapMotion",
    "~/Library/Caches/com.jeremyvizzini.snapmotion.osx",
    "~/Library/Preferences/com.jeremyvizzini.snapmotion.osx.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.snapmotion.osx.savedState",
  ]
end
