cask "satellite-eyes" do
  version "2.1.2"
  sha256 "2975aeed754ed060ff5bc7bfd05856e5d9bb90a37b08b1c4c80c0fe315fa828e"

  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version}.zip"
  name "Satellite Eyes"
  desc "Changes your desktop wallpaper to the satellite view of where you are"
  homepage "https://satelliteeyes.tomtaylor.co.uk/"

  livecheck do
    url "https://satellite-eyes.s3.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Satellite Eyes.app"

  zap trash: [
    "~/Library/Application Support/Satellite Eyes",
    "~/Library/Caches/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/HTTPStorages/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/Preferences/uk.co.tomtaylor.SatelliteEyes.plist",
  ]
end
