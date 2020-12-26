cask "metaimage" do
  version "1.9.7,6088"
  sha256 "4beef0fb7cbd5f9ed334e8575808a84bba4ecd8096377ea5da0f74ad7786e6d8"

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
