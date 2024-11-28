cask "photosrevive" do
  version "2.1.7"
  sha256 "0e71fc71a2bf2b5f258742b58b812593b6eae3f3f086874ebfd65f793fab2207"

  url "https://neededapps.com/appcasts/photosrevive/versions/#{version}"
  name "PhotosRevive"
  desc "Colourise old black and white photos automatically"
  homepage "https://neededapps.com/photosrevive/"

  livecheck do
    url "https://neededapps.com/appcasts/photosrevive/changelog.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "PhotosRevive.app"

  zap trash: [
    "~/Library/Application Support/PhotosRevive",
    "~/Library/Caches/com.jeremyvizzini.photosrevive.macos",
    "~/Library/Preferences/com.jeremyvizzini.photosrevive.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.photosrevive.macos.savedState",
  ]
end
