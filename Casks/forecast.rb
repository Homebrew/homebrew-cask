cask "forecast" do
  version "0.9.4,137"
  sha256 "ed3dd19cd69199b7e5c7e29e8e4c1fbbe0b901e1b28f3d2b4a0c0cf2568baf7f"

  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version.csv.first}_#{version.csv.second}.zip",
      verified: "d2uzvmey2c90kn.cloudfront.net/appcast_download/"
  name "Forecast"
  desc "Podcast MP3 encoder with chapters"
  homepage "https://overcast.fm/forecast"

  livecheck do
    url "https://overcast.fm/appcast/Forecast.xml"
    strategy :sparkle
  end

  app "Forecast.app"
end
