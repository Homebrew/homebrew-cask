cask "metaimage" do
  version "2.2.1,5cb4a587-daf4-4d81-8276-63aacac32cb0"
  sha256 "f7ea1f31213647d3b2d23825e1a98852818be6302baa420cd1469a58adb7a97a"

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
    "~/Library/Application Support/MetaImage",
    "~/Library/Caches/com.jeremyvizzini.metaimage.macos",
    "~/Library/Preferences/com.jeremyvizzini.metaimage.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metaimage.macos.savedState",
  ]
end
