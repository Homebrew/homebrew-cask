cask "satellite-eyes" do
  version "2.1.3"
  sha256 "ab51e47eb36f64b5259c5e1a8d0dd98ba93bfab82e31416af559f0e1e2633061"

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

  uninstall quit: "uk.co.tomtaylor.SatelliteEyes"

  zap trash: [
    "~/Library/Application Support/Satellite Eyes",
    "~/Library/Caches/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/HTTPStorages/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/Preferences/uk.co.tomtaylor.SatelliteEyes.plist",
  ]
end
