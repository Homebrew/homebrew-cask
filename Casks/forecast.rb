cask 'forecast' do
  version '0.9-120'
  sha256 '159d6fe56e59ec63f8ff2852ba04da196548fa063100a8c5fc2863ba7e352f7e'

  # d2uzvmey2c90kn.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_0.9_120.zip'
  name 'Forecast'
  homepage 'https://overcast.fm/forecast'

  app 'Forecast.app'
end
