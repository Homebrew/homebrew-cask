cask 'forecast' do
  version '0.9_125'
  sha256 '533baab40ab6bc7cef9ebfaa60804caffcdd3ff2915a7456733e5503ac7a64d4'

  # d2uzvmey2c90kn.cloudfront.net/appcast_download was verified as official when first introduced to the cask
  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version}.zip"
  appcast 'https://overcast.fm/appcast/Forecast.xml'
  name 'Forecast'
  homepage 'https://overcast.fm/forecast'

  app 'Forecast.app'
end
