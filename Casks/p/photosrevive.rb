cask "photosrevive" do
  version "2.1.2"
  sha256 "b392343c63f5e399743145c9d6550c2fd5c18a5c792003bb0beb2e99d8284cac"

  url "https://neededapps.com/appcasts/photosrevive/versions/#{version}"
  name "PhotosRevive"
  desc "Colorise old black and white photos automatically"
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
