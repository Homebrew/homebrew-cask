cask "metaimage" do
  version "1.8.0"
  sha256 "d8f62820f10d8fbd5a91fede00ba69efa21f572488372233662fe1a7a8495186"

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
