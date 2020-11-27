cask "metaimage" do
  version "1.9.2"
  sha256 "71fba182914c10ffafe54bd7a0510c2eed80c479c613453d41b755b8ae5ea3ca"

  url "https://neededapps.com/appcasts/metaimage/versions/MI-#{version}.zip"
  appcast "https://neededapps.com/appcasts/metaimage/changelog.xml"
  name "MetaImage"
  desc "Editor to read, write and edit images metadata"
  homepage "https://neededapps.com/metaimage/"

  depends_on macos: ">= :high_sierra"

  app "MetaImage.app"

  zap trash: [
    "~/Library/Application Support/MetaImage",
    "~/Library/Caches/com.jeremyvizzini.metaimage.macos",
    "~/Library/Preferences/com.jeremyvizzini.metaimage.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metaimage.macos.savedState",
  ]
end
