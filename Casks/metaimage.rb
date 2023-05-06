cask "metaimage" do
  version "2.5.2,1d692c7b-2bd1-4222-8d89-27a8d5e39b9b"
  sha256 "97207f1fb3116123da1d84c0b77b37a30ab52e5f3e9091e66e05503c2748e9ed"

  url "https://neededapps.nyc3.digitaloceanspaces.com/media/public/#{version.csv.second}.zip",
      verified: "neededapps.nyc3.digitaloceanspaces.com/media/public/"
  name "MetaImage"
  desc "Editor to read, write and edit images metadata"
  homepage "https://neededapps.com/metaimage/"

  livecheck do
    url "https://neededapps.com/appcasts/metaimage/changelog.xml"
    regex(%r{/([^/]+)\.zip$}i)
    strategy :sparkle do |item, regex|
      filename = item.url[regex, 1]
      next if filename.blank?

      "#{item.short_version},#{filename}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "MetaImage.app"

  zap trash: [
    "~/Library/Application Scripts/com.jeremyvizzini.metaimage-paddle.photosextension",
    "~/Library/Application Scripts/com.jeremyvizzini.metaimage-paddle.quicklookextension",
    "~/Library/Application Scripts/JVTX6KC453.group.com.jeremyvizzini.metaimage",
    "~/Library/Application Support/MetaImage",
    "~/Library/Caches/com.jeremyvizzini.metaimage.macos",
    "~/Library/Containers/com.jeremyvizzini.metaimage-paddle.photosextension",
    "~/Library/Containers/com.jeremyvizzini.metaimage-paddle.quicklookextension",
    "~/Library/Group Containers/JVTX6KC453.group.com.jeremyvizzini.metaimage",
    "~/Library/HTTPStorages/com.jeremyvizzini.metaimage-paddle",
    "~/Library/HTTPStorages/com.jeremyvizzini.metaimage-paddle.binarycookies",
    "~/Library/Preferences/com.jeremyvizzini.metaimage.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metaimage.macos.savedState",
  ]
end
