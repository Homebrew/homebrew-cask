cask "forecast" do
  version "0.9.1,129"
  sha256 "71425799cf7bb247cd83d0ff9275a1170245a0610b98d4613d186671da0fd49a"

  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version.before_comma}_#{version.after_comma}.zip",
      verified: "d2uzvmey2c90kn.cloudfront.net/appcast_download/"
  name "Forecast"
  homepage "https://overcast.fm/forecast"

  livecheck do
    url "https://overcast.fm/appcast/Forecast.xml"
    strategy :sparkle
  end

  app "Forecast.app"
end
