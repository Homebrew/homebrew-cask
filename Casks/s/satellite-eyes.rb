cask "satellite-eyes" do
  version "1.5.0"
  sha256 "c3646cd60618824f4aad9f4f744e5e6e3db7d96ceb11d72147a583bf02f74336"

  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version}.zip",
      verified: "satellite-eyes.s3.amazonaws.com/"
  name "Satellite Eyes"
  desc "Changes your desktop wallpaper to the satellite view of where you are"
  homepage "https://satelliteeyes.tomtaylor.co.uk/"

  livecheck do
    url "https://satellite-eyes.s3.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Satellite Eyes.app"

  zap trash: [
    "~/Library/Application Support/Satellite Eyes",
    "~/Library/Caches/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/HTTPStorages/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/Preferences/uk.co.tomtaylor.SatelliteEyes.plist",
  ]
end
