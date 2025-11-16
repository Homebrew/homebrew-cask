cask "photosrevive" do
  version "2.2.0"
  sha256 "d289c25c67c495156b7b7f95b80838bf06207ccafb91eec45e7668aa6044db24"

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
