cask "satellite-eyes" do
  version "2.1.0"
  sha256 "217add8279f09b88d24903bb6a5c92e322ffd043743d34669a8cc131b33249d2"

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
  depends_on macos: :ventura

  app "Satellite Eyes.app"

  zap trash: [
    "~/Library/Application Support/Satellite Eyes",
    "~/Library/Caches/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/HTTPStorages/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/Preferences/uk.co.tomtaylor.SatelliteEyes.plist",
  ]
end
