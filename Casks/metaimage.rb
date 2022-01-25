cask "metaimage" do
  version "1.9.8,6091"
  sha256 "12f5f575f679083706547c8adfd12c141c680a948313f3e47fd011842bf012d2"

  url "https://neededapps.com/appcasts/metaimage/versions/MI-#{version.csv.first}.zip"
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
