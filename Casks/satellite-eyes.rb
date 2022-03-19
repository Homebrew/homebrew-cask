cask "satellite-eyes" do
  version "1.5.0,1153"
  sha256 "c3646cd60618824f4aad9f4f744e5e6e3db7d96ceb11d72147a583bf02f74336"

  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version.csv.first}.zip",
      verified: "satellite-eyes.s3.amazonaws.com/"
  name "Satellite Eyes"
  homepage "https://satelliteeyes.tomtaylor.co.uk/"

  livecheck do
    url "https://satellite-eyes.s3.amazonaws.com/appcast.xml"
    strategy :sparkle
  end

  app "Satellite Eyes.app"
end
