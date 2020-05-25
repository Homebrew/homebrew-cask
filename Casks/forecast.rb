cask 'forecast' do
  version '0.9.1_128'
  sha256 '8d3200143ba11ca407953879d280f1d57b3b25c4c3769a58824b2a03f354dd2b'

  # d2uzvmey2c90kn.cloudfront.net/appcast_download/ was verified as official when first introduced to the cask
  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version}.zip"
  appcast 'https://overcast.fm/appcast/Forecast.xml'
  name 'Forecast'
  homepage 'https://overcast.fm/forecast'

  app 'Forecast.app'
end
