cask "snapmotion" do
  version "5.2.5"
  sha256 "e311b9fc66c83be06b5b300641b7126a7450bf6e747f8d7428e48861a6060912"

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
