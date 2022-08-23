cask "metaimage" do
  version "2.0.10,f2797a39-8b55-4822-95f3-db85220ea3a7"
  sha256 "b7f9cc972470185f3f135a6d190faabddedf3f6264e09608be8dbc0593cdcf73"

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
