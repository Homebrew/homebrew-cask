cask "snapmotion" do
  version "5.2.0"
  sha256 "89c6a3faf988f1630991ed367c8204cb70d92040add63b44f0670fc389ae84a2"

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
