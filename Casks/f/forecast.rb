cask "forecast" do
  version "0.9.6,139"
  sha256 "5323c8afcc5114ebeb3d97c02e7f367e2c7e7a776a4e8b57809ef8c305272501"

  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version.csv.first}_#{version.csv.second}.zip",
      verified: "d2uzvmey2c90kn.cloudfront.net/appcast_download/"
  name "Forecast"
  desc "Podcast MP3 encoder with chapters"
  homepage "https://overcast.fm/forecast"

  livecheck do
    url "https://overcast.fm/appcast/Forecast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

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
