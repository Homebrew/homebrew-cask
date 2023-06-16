cask "metaimage" do
  version "2.5.6,236c5a19-7254-4655-88cb-0ab4dfc56704"
  sha256 "22bccdc001532a45ca138f3b78d8146f4ecedd176634b72545dffd802d108aef"

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
