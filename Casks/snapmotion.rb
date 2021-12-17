cask "snapmotion" do
  version "5.0.2,07a2d1c9-7e7c-4238-88ce-bc2bb0e06357"
  sha256 "0c09072c8369a99e83b5801be56353bc6a88b0248dad5d1e14e8770f6d8c3e71"

  url "https://neededapps.nyc3.digitaloceanspaces.com/media/public/#{version.csv.second}.zip",
      verified: "neededapps.nyc3.digitaloceanspaces.com"
  name "SnapMotion"
  desc "Extract images from videos"
  homepage "https://neededapps.com/snapmotion/"

  livecheck do
    url "https://neededapps.com/appcasts/snapmotion/changelog.xml"
    strategy :sparkle do |item|
      hex = item.url[%r{/([\h-]+)\.zip}i, 1]
      next if hex.blank?

      "#{item.short_version},#{hex}"
    end
  end

  app "SnapMotion.app"

  zap trash: [
    "~/Library/Application Support/SnapMotion",
    "~/Library/Caches/com.jeremyvizzini.snapmotion.osx",
    "~/Library/Preferences/com.jeremyvizzini.snapmotion.osx.plist",
    "~/Library/Saved Application State/com.jeremyvizzini.snapmotion.osx.savedState",
  ]
end
