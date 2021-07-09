cask "forecast" do
  version "0.9.3,135"
  sha256 "c8e3bc2cfc705bfd88ea611a4b30b803c7efb90d3aee79a9c8f1ec4fc42a85e9"

  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version.before_comma}_#{version.after_comma}.zip",
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
