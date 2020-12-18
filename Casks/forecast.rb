cask "forecast" do
  version "0.9.1_129"
  sha256 "71425799cf7bb247cd83d0ff9275a1170245a0610b98d4613d186671da0fd49a"

  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version}.zip",
      verified: "d2uzvmey2c90kn.cloudfront.net/appcast_download/"
  appcast "https://overcast.fm/appcast/Forecast.xml"
  name "Forecast"
  homepage "https://overcast.fm/forecast"

  app "Forecast.app"
end
