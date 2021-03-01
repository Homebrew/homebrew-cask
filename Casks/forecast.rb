cask "forecast" do
  version "0.9.2,131"
  sha256 "dd34215beaff20687e7d3d86dc44b4a13c648f65104670131897391d933ff82f"

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
