cask "metaimage" do
  version "2.6.4"
  sha256 "e6968869af157acb48a9ce72f40d2bc55a01e2561c7ed670c1628f349ae4c3b8"

  url "https://neededapps.com/appcasts/metaimage/versions/#{version}"
  name "MetaImage"
  desc "Image metadata and geographical tag viewer & editor"
  homepage "https://neededapps.com/metaimage/"

  livecheck do
    url "https://neededapps.com/appcasts/metaimage/changelog.xml"
    strategy :sparkle, &:short_version
  end

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
