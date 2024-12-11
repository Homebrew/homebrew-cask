cask "metaimage" do
  version "2.6.6"
  sha256 "afe8138282d2cc3618257a2bc73b8819fe041804ce5a4b891579cd2141804551"

  url "https://neededapps.com/appcasts/metaimage/versions/#{version}"
  name "MetaImage"
  desc "Image metadata and geographical tag viewer & editor"
  homepage "https://neededapps.com/metaimage/"

  livecheck do
    url "https://neededapps.com/appcasts/metaimage/changelog.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "MetaImage.app"

  zap trash: [
    "~/Library/Application Scripts/*.group.com.jeremyvizzini.metaimage",
    "~/Library/Application Scripts/com.jeremyvizzini.metaimage-paddle.*",
    "~/Library/Application Support/com.jeremyvizzini.metaimage-paddle",
    "~/Library/Application Support/MetaImage",
    "~/Library/Caches/com.jeremyvizzini.metaimage*",
    "~/Library/Containers/com.jeremyvizzini.metaimage*",
    "~/Library/Group Containers/*.group.com.jeremyvizzini.metaimage",
    "~/Library/HTTPStorages/com.jeremyvizzini.metaimage*",
    "~/Library/Preferences/com.jeremyvizzini.metaimage*.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metaimage.macos.savedState",
  ]
end
