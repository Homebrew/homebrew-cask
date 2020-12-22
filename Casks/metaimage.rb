cask "metaimage" do
  version "1.9.4,6086"
  sha256 "90e69d5b6ef346803eb012ce3a81fd1798a972e215904c60a7a9953172dccf66"

  url "https://neededapps.com/appcasts/metaimage/versions/MI-#{version.before_comma}.zip"
  name "MetaImage"
  desc "Editor to read, write and edit images metadata"
  homepage "https://neededapps.com/metaimage/"

  livecheck do
    url "https://neededapps.com/appcasts/metaimage/changelog.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "MetaImage.app"

  zap trash: [
    "~/Library/Application Support/MetaImage",
    "~/Library/Caches/com.jeremyvizzini.metaimage.macos",
    "~/Library/Preferences/com.jeremyvizzini.metaimage.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metaimage.macos.savedState",
  ]
end
