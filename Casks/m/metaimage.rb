cask "metaimage" do
  version "2.6.1"
  sha256 "23678176c30274dd73165881c6981eeec7cc8e59d9bdf63c1c35d531844ef1e7"

  url "https://neededapps.com/appcasts/metaimage/versions/#{version}"
  name "MetaImage"
  desc "Editor to read, write and edit images metadata"
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
