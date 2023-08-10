cask "gluemotion" do
  version "2.1.4,72ba9f4c-292f-4778-b270-5b71bfa27e9d"
  sha256 "1e3f0f6d8acbb03bf4b5c3d0391363aca21dc71ae44c238c87b50bdc0644f6fb"

  url "https://neededapps.nyc3.digitaloceanspaces.com/media/public/#{version.csv.second}.dmg",
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
