cask "photosrevive" do
  version "2.1.3"
  sha256 "4f6e939449e9ffc5437c63b0d5410b5d4558843ab6e0f25968668ef6df4928b9"

  url "https://neededapps.com/appcasts/photosrevive/versions/#{version}"
  name "PhotosRevive"
  desc "Colourise old black and white photos automatically"
  homepage "https://neededapps.com/photosrevive/"

  livecheck do
    url "https://neededapps.com/appcasts/photosrevive/changelog.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "PhotosRevive.app"

  zap trash: [
    "~/Library/Application Support/PhotosRevive",
    "~/Library/Caches/com.jeremyvizzini.photosrevive.macos",
    "~/Library/Preferences/com.jeremyvizzini.photosrevive.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.photosrevive.macos.savedState",
  ]
end
