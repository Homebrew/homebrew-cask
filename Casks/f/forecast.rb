cask "forecast" do
  version "0.9.5,138"
  sha256 "a3c129a261aa9d54c41f3fe4f4910cda23e19e4e912afa1c08121c0d8dcf817c"

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

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fm.overcast.forecast-encoder.sfl*",
    "~/Library/Application Support/Forecast",
    "~/Library/Caches/fm.overcast.forecast-encoder",
    "~/Library/HTTPStorages/fm.overcast.forecast-encoder",
    "~/Library/Preferences/fm.overcast.forecast-encoder.plist",
    "~/Library/Saved Application State/fm.overcast.forecast-encoder.savedState",
    "~/Library/WebKit/fm.overcast.forecast-encoder",
  ]
end
