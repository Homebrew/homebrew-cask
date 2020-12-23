cask "metaimage" do
  version "1.9.5,6087"
  sha256 "f165da2b29fe44ff56f514b88aa7e10f210d3c3790926394e90d42240bdcaaf6"

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
