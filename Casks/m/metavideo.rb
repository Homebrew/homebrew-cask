cask "metavideo" do
  version "1.1.3"
  sha256 "6866827f215ea48165d775639cbd31ae2851c8292fcf8901953055479bbd0738"

  url "https://neededapps.com/appcasts/metavideo/versions/#{version}"
  name "MetaVideo"
  desc "Video metadata tag viewer and editor"
  homepage "https://neededapps.com/metavideo/"

  livecheck do
    url "https://neededapps.com/appcasts/metavideo/changelog.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "MetaVideo.app"

  zap trash: [
    "~/Library/Application Scripts/*.group.com.jeremyvizzini.metavideo",
    "~/Library/Application Scripts/com.jeremyvizzini.metavideo-paddle.*",
    "~/Library/Application Support/com.jeremyvizzini.metavideo-paddle",
    "~/Library/Application Support/MetaVideo",
    "~/Library/Caches/com.jeremyvizzini.metavideo*",
    "~/Library/Containers/com.jeremyvizzini.metavideo*",
    "~/Library/Group Containers/*.group.com.jeremyvizzini.metavideo",
    "~/Library/HTTPStorages/com.jeremyvizzini.metavideo*",
    "~/Library/Preferences/com.jeremyvizzini.metavideo*.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metavideo.macos.savedState",
  ]
end
