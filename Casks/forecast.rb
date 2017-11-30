cask 'forecast' do
  version '0.9_120'
  sha256 '159d6fe56e59ec63f8ff2852ba04da196548fa063100a8c5fc2863ba7e352f7e'

  # d2uzvmey2c90kn.cloudfront.net/appcast_download was verified as official when first introduced to the cask
  url "https://d2uzvmey2c90kn.cloudfront.net/appcast_download/Forecast_#{version}.zip"
  appcast 'https://overcast.fm/appcast/Forecast.xml',
          checkpoint: 'a328b0e823360eab38e96b06e42294f1e81b72f0e8bb948c7950577865bbef14'
  name 'Forecast'
  homepage 'https://overcast.fm/forecast'

  app 'Forecast.app'
end
