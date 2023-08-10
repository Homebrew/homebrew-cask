cask "photosrevive" do
  version "2.1.2,d25c13f0-ae5a-4a37-9668-42622147f176"
  sha256 "b392343c63f5e399743145c9d6550c2fd5c18a5c792003bb0beb2e99d8284cac"

  url "https://neededapps.nyc3.digitaloceanspaces.com/media/public/#{version.csv.second}.dmg",
      verified: "neededapps.nyc3.digitaloceanspaces.com/media/public/"
  name "PhotosRevive"
  desc "Colorise old black and white photos automatically"
  homepage "https://neededapps.com/photosrevive/"

  livecheck do
    url "https://neededapps.com/appcasts/photosrevive/changelog.xml"
    strategy :sparkle do |item|
      hex = item.url[%r{/([\h-]+)\.dmg}i, 1]
      next if hex.blank?

      "#{item.short_version},#{hex}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "PhotosRevive.app"

  zap trash: [
    "~/Library/Application Support/PhotosRevive",
    "~/Library/Caches/com.jeremyvizzini.photosrevive.macos",
    "~/Library/Preferences/com.jeremyvizzini.photosrevive.macos.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.photosrevive.macos.savedState",
  ]
end
