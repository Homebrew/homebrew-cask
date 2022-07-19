cask "metaimage" do
  version "2.0.5,d097661f-3b76-4d6a-82e0-4b8d487a77c8"
  sha256 "b64ca8c6e9e523a3316fa0de513eae3b3442fbb43d44f538dbd7d1b884345082"

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

  depends_on macos: ">= :high_sierra"

  app "MetaImage.app"

  zap trash: [
    "~/Library/Application Support/MetaImage",
    "~/Library/Caches/com.jeremyvizzini.metaimage.macos",
    "~/Library/Preferences/com.jeremyvizzini.metaimage.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.metaimage.macos.savedState",
  ]
end
