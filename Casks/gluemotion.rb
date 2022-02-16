cask "gluemotion" do
  version "2.0.3,89956f77-5445-463f-8baf-f151b507af40"
  sha256 "f72bc10420e4df6f745a7c14c9d22c29b79e0d0d51a129d005ff3618ed975428"

  url "https://neededapps.nyc3.digitaloceanspaces.com/media/public/#{version.csv.second}.zip",
      verified: "neededapps.nyc3.digitaloceanspaces.com"
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

  app "GlueMotion.app"

  zap trash: [
    "~/Library/Application Support/GlueMotion",
    "~/Library/Caches/com.jeremyvizzini.gluemotion.macos",
    "~/Library/Preferences/com.jeremyvizzini.gluemotion.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.gluemotion.macos.savedState",
  ]
end
