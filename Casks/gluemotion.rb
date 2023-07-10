cask "gluemotion" do
  version "2.1.2,be3b54ca-775b-479f-9aac-ea69ad9c5ffa"
  sha256 "6c99cfe87ec87f880e3fcb12bee7366c40ca0cc2865fba49024dcefdd8deefc8"

  url "https://neededapps.nyc3.digitaloceanspaces.com/media/public/#{version.csv.second}.zip",
      verified: "neededapps.nyc3.digitaloceanspaces.com/media/public/"
  name "GlueMotion"
  desc "Create and correct time lapse movies"
  homepage "https://neededapps.com/gluemotion/"

  livecheck do
    url "https://neededapps.com/appcasts/gluemotion/changelog.xml"
    strategy :sparkle do |item|
      hex = item.url[%r{/([\h-]+)\.zip}i, 1]
      next if hex.blank?

      "#{item.short_version},#{hex}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "GlueMotion.app"

  zap trash: [
    "~/Library/Application Support/GlueMotion",
    "~/Library/Caches/com.jeremyvizzini.gluemotion.macos",
    "~/Library/Preferences/com.jeremyvizzini.gluemotion.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.gluemotion.macos.savedState",
  ]
end
