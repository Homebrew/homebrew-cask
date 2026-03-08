cask "satellite-eyes" do
  version "2.0.0"
  sha256 "75e92ed092c2d6e9bb1c486200c63d7f87b8f18932a06507a5e2414dc6c7f635"

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
  depends_on macos: ">= :ventura"

  app "Satellite Eyes.app"

  zap trash: [
    "~/Library/Application Support/Satellite Eyes",
    "~/Library/Caches/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/HTTPStorages/uk.co.tomtaylor.SatelliteEyes",
    "~/Library/Preferences/uk.co.tomtaylor.SatelliteEyes.plist",
  ]
end
