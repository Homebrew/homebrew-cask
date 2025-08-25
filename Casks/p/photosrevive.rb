cask "photosrevive" do
  version "2.1.8"
  sha256 "b35275ce609bf29cade334dab8e14eb6052d2f57629ae6c6b3e8914565f28ac3"

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
