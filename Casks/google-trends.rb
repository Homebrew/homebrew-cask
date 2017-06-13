cask 'google-trends' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/dl/trends/screensaver/GoogleTrendsScreensaver.dmg'
  name 'Google Trends Screensaver'
  homepage 'https://trends.google.com/trends/hottrends/visualize'

  screen_saver 'Google Trends.saver'
end
