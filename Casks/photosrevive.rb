cask "photosrevive" do
  version "2.0.1,6059"
  sha256 "a1b931c1d1298fc6ea8866fbdb74e109b808fdb6846c2eaeb14642b81ac5c46a"

  url "https://neededapps.com/appcasts/photosrevive/versions/PR-#{version.before_comma}.zip"
  name "PhotosRevive"
  desc "Colorize old black and white photos automatically"
  homepage "https://neededapps.com/photosrevive/"

  livecheck do
    url "https://neededapps.com/appcasts/photosrevive/changelog.xml"
    strategy :sparkle
  end

  app "PhotosRevive.app"

  zap trash: [
    "~/Library/Application Support/PhotosRevive",
    "~/Library/Caches/com.jeremyvizzini.photosrevive.macos",
    "~/Library/Preferences/com.jeremyvizzini.photosrevive.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.photosrevive.macos.savedState",
  ]
end
