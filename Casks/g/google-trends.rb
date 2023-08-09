cask "google-trends" do
  version "1.0"
  sha256 :no_check

  url "https://dl.google.com/dl/trends/screensaver/GoogleTrendsScreensaver.dmg"
  name "Google Trends Screensaver"
  homepage "https://trends.google.com/trends/hottrends/visualize"

  livecheck do
    url :url
    strategy :extract_plist
  end

  screen_saver "Google Trends.saver"
end
